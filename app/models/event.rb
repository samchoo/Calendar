class Event < ActiveRecord::Base
  has_event_calendar
  attr_accessible :email, :name, :start_at, :end_at, :monday, :tuesday, :wednesday, :thursday, :friday, :saturday, :sunday, :daily, :all_days, :weekly,
  :biweekly, :monthly, :quarterly, :half_year, :annually

  end