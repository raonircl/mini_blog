class Article < ApplicationRecord
  validates :title, presence: true
  validates :boby, presence: true, length: { minimum: 10 }
end
