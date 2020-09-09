class Contact < ApplicationRecord
    belongs_to :user
    belongs_to :pages
    has_many :users, through: :pages


    scope :alpha, -> (order(:name))
end
