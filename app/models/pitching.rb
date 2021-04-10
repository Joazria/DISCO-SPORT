class Pitching < ApplicationRecord
  belongs_to :user

  validates :name, uniqueness: true
  validates :description, presence: true

end
