class AddUserPracticeToGoal < ActiveRecord::Migration
  def self.up
    add_column :goals, :user_practice_id, :integer
  end

  def self.down
    remove_column :goals, :user_practice_id
  end
end
