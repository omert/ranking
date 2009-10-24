# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#   
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Major.create(:name => 'Daley', :city => cities.first)

require 'cgi'
require 'open-uri'
require 'nokogiri'

if Movie.count == 0
  imdb_url = 'http://www.imdb.com/chart/top'
  imdb_page = open(imdb_url).read 
  imdb_parsed = Nokogiri::HTML.parse(imdb_page)
  imdb_parsed.css('#main table a').each do |link|
    Movie.create :name => link.content, :imdb_link => link.attribute('href').to_s
  end
end
