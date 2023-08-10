class Comment < ApplicationRecord
  include Visible

  belongs_to :article

  validates :commenter, presence: true, length: { maximum: 15, message: "Exceeded the 15 character limit!" }
  validates :body, presence: true, length: { maximum: 30, message: "Exceeded the 30 character limit!" }
end
