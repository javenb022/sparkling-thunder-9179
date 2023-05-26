class Movie < ApplicationRecord
  belongs_to :studio
  has_many :actor_movies
  has_many :actors, through: :actor_movies

  def average_age
    actors.average(:age)
  end

  def actors_by_age
    actors.order(:age)
  end
end
