class User < ApplicationRecord
    validates :email, uniqueness: true
    validates :password, length: { minimum: 8 }
end
