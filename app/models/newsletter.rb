class Newsletter < ApplicationRecord
  belongs_to :user

  validates :title, :punshline, :article, :publish, :en_fr, presence: true


end
