class Identity < ApplicationRecord
  belongs_to :user

  validates :release, presence: true, length: {minimum: 150, maximum: 500}
end
