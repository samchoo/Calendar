 class CalendarController < ApplicationController
 def index
 @month = (params[:month] || Time.zone.now.month).to_i
 @year = (params[:year] || Time.zone.now.year).to_i
 @shown_month = Date.civil(@year, @month)
 @event_strips = Event.event_strips_for_month(@shown_month)


=begin
   x = Event.new
 x = Event.new
   x.name = "This is a test"
   x.start_at = Time.current
   x.end_at = Time.current
   x.save
=end




 end
 end
 
 def test
   
 end

