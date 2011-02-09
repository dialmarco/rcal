class CreateDefaultPractices < ActiveRecord::Migration
  def self.up
    create_table :default_practices do |t|
      t.integer :amount
      t.references :practice_units
      t.references :practice

      t.timestamps
    end
  end

  def self.down
    drop_table :default_practices
  end
end
