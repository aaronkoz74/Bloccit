class Rating < ActiveRecord::Base
  has_many :topics
  has_many :posts

  def self.update_rating(rating_string)
    return Rating.none if rating_string.blank?

    Rating.find_or_create_by(severity: rating_string.to_i)

  end

  enum severity: [ :PG, :PG13, :R ]
end
