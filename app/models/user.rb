class User < ApplicationRecord
    has_secure_password
    validates :username, uniqueness: { case_sensitive: false }
    has_many :links
    has_many :languages, through: :links
    has_many :chatlinks
    has_many :conversations, through: :chatlinks
    has_many :messages
end
