class Movie < ActiveRecord::Base

  validates_uniqueness_of :name, :imdb_link

end
