class Calorie < ActiveRecord::Base

	after_create :request

	def request
		open("http://stormy-island-6340.herokuapp.com/st_users/1/update_db")
	end
end
