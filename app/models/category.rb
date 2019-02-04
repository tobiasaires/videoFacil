class Category < ApplicationRecord
    has_many :videos
    validates :name, presence: true
    validates :is_favorite, presence: true
end
