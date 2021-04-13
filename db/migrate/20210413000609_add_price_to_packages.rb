class AddPriceToPackages < ActiveRecord::Migration[6.0]
  def change
    add_monetize :packages, :price, currency: { present: false }
  end
end
