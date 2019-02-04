class Comment < ApplicationRecord
  belongs_to :video

  validates :author, presence: true
  validates :content, presence: true
end
