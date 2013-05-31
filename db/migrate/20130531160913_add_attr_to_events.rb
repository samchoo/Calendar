class AddAttrToEvents < ActiveRecord::Migration
  def change
    add_column :events, :monday, :boolean
    add_column :events, :tuesday, :boolean
    add_column :events, :wednesday, :boolean
    add_column :events, :thursday, :boolean
    add_column :events, :friday, :boolean
    add_column :events, :saturday, :boolean
    add_column :events, :sunday, :boolean
    add_column :events, :daily, :boolean
    add_column :events, :all_days, :boolean
    add_column :events, :weekly, :boolean
    add_column :events, :bi_weekly, :boolean
    add_column :events, :monthly, :boolean
    add_column :events, :quarterly, :boolean
    add_column :events, :half_year, :boolean
    add_column :events, :annually, :boolean
  end
end
