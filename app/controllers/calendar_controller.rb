 class CalendarController < ApplicationController
 def index
 @month = (params[:month] || Time.zone.now.month).to_i
 @year = (params[:year] || Time.zone.now.year).to_i
 @shown_month = Date.civil(@year, @month)
 @event_strips = Event.event_strips_for_month(@shown_month)

#x = Event.new
#x.do_something()

 end
=begin
   x = Event.new
 x = Event.new
   x.name = "This is a test"
   x.start_at = Time.current
   x.end_at = Time.current
   x.save
=end



   
 def events
   @event = Event.find(params[:id])
 end



 end
 
 def test
   
 end

