class PaymentsController < ApplicationController
  def new
    @order = current_user.orders.where(state: 'pending').find(params[:order_id])
    # check the current user's order where the state is pending and FIND the first one with this id(:order_id)
    # start the query with the association and then filter.
  end
end
