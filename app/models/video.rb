class Video < ApplicationRecord
  belongs_to :category
  has_many :comments, dependent: :destroy

  validates :title, presence: true
  validates :url, presence: true
  validates :category_id, presence: true


end
