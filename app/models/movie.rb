class Movie < ActiveRecord::Base
    
    def self.ratings
       ['G','PG','PG-13','R']
    end
    
    def self.filter_movies(ratings, sort_by)
        
        return Movie.where(rating: ratings) if sort_by.nil?
        return Movie.all.order(sort_by) if ratings.nil?
        Movie.where(rating: ratings).order(sort_by)
    end
end
