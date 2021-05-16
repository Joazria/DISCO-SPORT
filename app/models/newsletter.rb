class Newsletter < ApplicationRecord
  belongs_to :user

  has_one_attached :photo

  validates :title, :punshline, :article, :en_fr, presence: true


end
