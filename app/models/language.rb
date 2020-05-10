class Language < ApplicationRecord
    has_many :links
    has_many :users, through: :links
end
