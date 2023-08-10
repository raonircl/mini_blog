class Comment < ApplicationRecord
  belongs_to :article

  validates :commenter, presence: true, length: { maximum: 15, message: "Exceeded the 15 character limit!" }
  validates :body, presence: true, length: { maximum: 30, message: "Exceeded the 30 character limit!" }

  VALID_STATUSES = [ 'public', 'private', 'archived' ]

  validates :status, inclusion: { in: VALID_STATUSES }

  def archived?
    status == 'archived'
  end
end
