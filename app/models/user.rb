class User < ApplicationRecord
    has_many :links
    has_many :languages, through: :links
end
