 class CalendarController < ApplicationController
 def index
 
 
 
 #@event = Event.new
 #@event.name = "If my email is asdf@asdf.com, then this is correct."
 #@event.email = "bob@bob.com"
 #@event.start_at = Time.now
 #@event.end_at = Time.now
 
 #@event.save

 
   
 @month = (params[:month] || Time.zone.now.month).to_i
 @year = (params[:year] || Time.zone.now.year).to_i
 @shown_month = Date.civil(@year, @month)
 @event_strips = Event.where('email' => current_user.email).event_strips_for_month(@shown_month)

 
 end
   
   def events
     @event = Event.find(params[:id])
   end   
 end

