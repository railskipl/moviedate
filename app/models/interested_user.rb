class InterestedUser < ActiveRecord::Base

  # attr_accessible :title, :body

   attr_accessible :user_id, :user_name, :birthday, :gender, :location, :contact_no, :movie_id, :movie_name, :theater, :city, :time 
end

