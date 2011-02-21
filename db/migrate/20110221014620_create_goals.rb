class CreateGoals < ActiveRecord::Migration
  def self.up
    create_table :goals do |t|
      t.date :start
      t.date :end
      t.integer :end_value
      t.integer :start_value

      t.timestamps
    end
  end

  def self.down
    drop_table :goals
  end
end
