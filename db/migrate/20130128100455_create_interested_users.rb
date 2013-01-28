class CreateInterestedUsers < ActiveRecord::Migration
  def change
    create_table :interested_users do |t|
      t.integer :user_id
      t.string :user_name
      t.date :birthday
      t.string :gender
      t.string :location
      t.string :contact_no
      t.integer :movie_id
      t.string :movie_name
      t.string :theater
      t.string :city
      t.datetime :time
      t.timestamps
      t.timestamps
    end
  end
end
