class Contact < ApplicationRecord
    belongs_to :user
    belongs_to :pages
    has_many :users, through: :pages
end
