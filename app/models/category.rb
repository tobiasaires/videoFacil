class Category < ApplicationRecord
    has_many :videos, dependent: :destroy
    validates :name, presence: true
    validates :is_favorite, presence: true
end
