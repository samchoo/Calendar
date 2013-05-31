class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.integer, :id
      t.integer, :user_id
      t.string, :task_name
      t.boolean, :monday
      t.boolean, :tuesday
      t.boolean, :wednesday
      t.boolean, :thursday
      t.boolean, :friday
      t.boolean, :saturday
      t.boolean, :sunday
      t.boolean, :daily
      t.boolean, :all_days
      t.boolean, :weekly
      t.boolean, :biweekly
      t.boolean, :monthly
      t.boolean, :quarterly
      t.boolean, :half_a_year
      t.boolean :annually

      t.timestamps
    end
  end
end
