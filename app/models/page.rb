class Page < ApplicationRecord
  belongs_to :user
  has_many :contacts
  has_many :users, through: :contacts

  validates :name, :information, :photo, prescence: true
end
