class Article < ApplicationRecord
  include Visible

  has_many :comments, dependent: :destroy

  validates :title, presence: true, length: { maximum: 15, message: "Exceeded the 15 character limit!" }
  validates :boby, presence: true, length: { minimum: 10, message: "Minimum text with 10 character." }
end
