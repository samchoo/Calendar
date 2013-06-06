 class CalendarController < ApplicationController
   
   before_filter :signed_in_user
   
   def signed_in_user
     unless signed_in?
       store_location
       redirect_to root_path
     end
   end
   def store_location
     session[:return_to] = request.url
   end
   
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
     @event = Event.all
   end   

 end


=begin
  def new
    @event = Event.new
  end
  def index
    @event = Event.all
  end
  def create
    @event = Event.new(params[:event])
    @event.save
    redirect_to root_path
  end  
=end