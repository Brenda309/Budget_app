class User < ApplicationRecord
 has_many :category, dependent: :destroy
 has_many :traffic, dependent: :destroy
 validates :name, presence: true
end
