class CreatePracticeEntries < ActiveRecord::Migration
  def self.up
    create_table :practice_entries do |t|
      t.integer :amount
      t.date :practice_date
      t.references :user
      t.references :user_practice

      t.timestamps
    end
  end

  def self.down
    drop_table :practice_entries
  end
end
