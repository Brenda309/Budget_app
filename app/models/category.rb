class Category < ApplicationRecord
  belongs_to :user
  has_many :traffic, dependent: :destroy
  validates :name, presence: true
  validates :icon, presence: true
  validates :icon, allow_blank: true, format: {
    with: /%r{\.gif|jpg|png}i/,
    message: 'must be a url for gif, jpg, or png image.'
  }
end
