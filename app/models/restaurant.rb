class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, uniqueness: true, presence: true
  validates :address, presence: true
  validates :category, presence: true
  validates :category, inclusion: { in: ["chinese", "italian", "japanese", "french", "belgian"] }
  # validates :ratings, inclusion: { in: [0, 1, 2, 3, 4, 5] }
end

  # validates :name, uniqueness: true, presence: true
  # validates :address, presence: true
  # validates :stars, inclusion: { in: [1, 2, 3, 4, 5] }
