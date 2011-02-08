class CreatePracticeUnits < ActiveRecord::Migration
  def self.up
    create_table :practice_units do |t|
      t.string :unit_name
      t.references :unit

      t.timestamps
    end
  end

  def self.down
    drop_table :practice_units
  end
end
