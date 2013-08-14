class Event < ActiveRecord::Base
	validates :organizer_name, :organizer_email, :title, :date, :presence => true
	validates :title, :uniqueness => true
	validate  :check_date


	def check_date
		p self.date
		begin 
			if Date.today > self.date
				puts "Hello"
			  errors.add(:date,"Is Invalid: Event Can't Be In The Past!")
			return false
			end
		rescue
			puts "Hello There"
			errors.add(:date, "Is Invalid!")
			return false
		end
		true
	end

end

