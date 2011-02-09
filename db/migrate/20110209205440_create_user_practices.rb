class CreateUserPractices < ActiveRecord::Migration
  def self.up
    create_table :user_practices do |t|
      t.references :practice_units
      t.references :practice
      t.references :user
      t.integer :amount

      t.timestamps
    end
  end

  def self.down
    drop_table :user_practices
  end
end
