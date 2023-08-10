class Article < ApplicationRecord
  has_many :comments

  validates :title, presence: true, length: { maximum: 15, message: "Exceeded the 15 character limit!" }
  validates :boby, presence: true, length: { minimum: 10, message: "Minimum text with 10 character." }

  VALID_STATUSES = [ 'public', 'private', 'archived' ]

  validates :status, inclusion: { in: VALID_STATUSES }

  def archived?
    status == 'archived'
  end
end
