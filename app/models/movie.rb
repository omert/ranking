class Movie < ActiveRecord::Base
  include Rankable
  
  validates_uniqueness_of :name, :imdb_link


  def display
    
  end
end
