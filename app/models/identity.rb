class Identity < ApplicationRecord
  belongs_to :user

  validates :company, presence: true
  validates :country, presence: true
  validates :website, presence: true
  validates :gender, presence: true
  validates :phone, presence: true
  validates :whatsapp, presence: true
  validates :linkedin, presence: true
  validates :release, presence: true
  validates :member, presence: true
  validates :job, presence: true

end
