class Article < ApplicationRecord
  validates :title, presence: true
  validates :description , presence: true, length: { maximum: 1000 }
end
