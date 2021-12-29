class Article < ApplicationRecord
  belongs_to :user
  validates :title, presence: true
  validates :description , presence: true, length: { maximum: 1000 }
end
