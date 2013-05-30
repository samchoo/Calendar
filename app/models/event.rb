class Event < ActiveRecord::Base
  has_event_calendar
  
  
  
   def do_something
   self.name = "This is a test"
   self.start_at = Time.current
   self.end_at = Time.current
   self.test = 123
   self.save
   end
  end