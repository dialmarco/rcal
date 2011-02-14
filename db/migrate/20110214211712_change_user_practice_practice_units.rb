class ChangeUserPracticePracticeUnits < ActiveRecord::Migration
  def self.up
    rename_column :user_practices, :practice_units_id, :practice_unit_id
  end

  def self.down
    rename_column :user_practices, :practice_unit_id, :practice_units_id
  end
end
