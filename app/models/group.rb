class Group < ApplicationRecord
   belongs_to :user
  has_many :settlements, dependent: :destroy

  validates :name, presence: true
  validates :icon, presence: true
  validates :icon,
            format: {
              with: URI::DEFAULT_PARSER.make_regexp(%w[http https]),
              message: 'image url is not a valid URL'
            }
  def total_amount
   settlements.sum(:amount)
  end
end
