class UsersIntrest < ActiveRecord::Base
   attr_accessible :user_id, :user_name, :birthday, :gender, :location, :contact_no, :movie_id, :movie_name, :theater, :city, :time 
end
