class Event < ActiveRecord::Base
  validates_presence_of :organizer_name, :date, :title, :organizer_email
  validates_uniqueness_of :title

end

