class User < ApplicationRecord
    has_many :contacts
    has_many :contacted_pages, through :contacts
    has_many :contacts, through :pages
end
