class AddColumnImdbLinkToMovies < ActiveRecord::Migration
  def self.up
    add_column :movies, :imdb_link, :string
  end

  def self.down
    remove_column :movies, :imdb_link
  end
end
