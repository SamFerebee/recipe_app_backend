class User < ApplicationRecord
    has_many :recipes

    has_secure_password
    validates :username, presence: true
    validates :username, uniqueness: { case_sensitive: false }
    validates :avatar, presence: true
    validates :password, presence: true, on: :create
    validates :password, length: {minimum: 3}, on: :create
end
