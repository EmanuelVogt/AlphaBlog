class Article < ApplicationRecord
  validates :title, :description, presence: true, length: { maximum: 100 }
end
