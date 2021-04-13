class Order < ApplicationRecord
  belongs_to :user
  belongs_to :package

  monetize :amount_cents
end
