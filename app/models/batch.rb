class Batch < ApplicationRecord
  has_many :students, dependent: :destroy
  validates :name, presence: true
  validates :banner_url, presence: true
end
