class ChangePracticeUnitsFotDefaultPractice < ActiveRecord::Migration
  def self.up
    rename_column :default_practices, :practice_units_id, :practice_unit_id
  end

  def self.down
    rename_column :default_practices, :practice_unit_id, :practice_units_id
  end
end
