class Topic < ActiveRecord::Base
  belongs_to :rating

  has_many :posts, dependent: :destroy
  has_many :labelings, as: :labelable
  has_many :labels, through: :labelings

  validates :rating, presence: true
  validates :name, length: { minimum: 5}, presence: true
  validates :description, length: { minimum: 15}, presence: true

end
