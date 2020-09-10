class Page < ApplicationRecord
  belongs_to :user
  has_many :contacts
  has_many :users, through: :contacts

  validates :name, :information, :photo, prescence: true
  validate :pages_limit, on: :create

  def pages_with_limits
    if self.user.pages(:reload).count >= self.user.pages_limit 
      errors.add(:base, 'Exceeded pages limit')
    end
  end

end
