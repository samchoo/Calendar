class AddtestToEvent < ActiveRecord::Migration
  def change
    add_column :events, :test, :string
  end
end
