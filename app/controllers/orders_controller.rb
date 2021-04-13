class OrdersController < ApplicationController
  def create
    package = Package.find(params[:package_id])
    order = Order.create!(package: package, package_sku: package.sku, amount: package.price, state: 'pending', user: current_user)

    session = Stripe::Checkout::Session.create(
      # create an order at  our stripe's dashboard
      payment_method_types: ['card'],
      line_items: [{
                     name: package.sku,
                     amount: package.price_cents,
                     currency: 'usd',
                     quantity: 1
      }],
      success_url: order_url(order),
      cancel_url: order_url(order)
    )

    order.update(checkout_session_id: session.id)
    redirect_to new_order_payment_path(order)
  end

  def show
    @order = current_user.orders.find(params[:id])
    # more secure cuz it filters only the order from the CURRENT USER.
    # @order = Order.find(params[:id])
  end
end
