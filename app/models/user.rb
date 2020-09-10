class User < ApplicationRecord
    has_many :pages
    has_many :contacts
    has_many :contacted_pages, through: :contacts, source: :pages
    has_secure_password 



    def pages_limit
        roles.first.pages.count
      end
    end
end
