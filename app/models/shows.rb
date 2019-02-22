require 'pry'

class Show < ActiveRecord::Base
  
  def self.highest_rating
    Show.maximum(:rating)
end

def self.most_popular_show
  Show.where("rating = ?", Show.highest_rating).first
end

def self.lowest_rating
  Show.minimum(:rating)
end

def self.least_popular_show
  Show.where("rating = ?", self.lowest_rating).first
end

def self.ratings_sum
  Show.sum(:rating)
end

def self.popular_shows
  popular_shows = []
  popular_shows = Show.where("rating > 5")
  popular_shows
end

def self.shows_by_alphabetical_order
  all_shows = []
  all_shows = Show.order(:name)
  all_shows
end
end












