class AddValuesToCohorts < ActiveRecord::Migration
  def change
    add_column :cohorts, :student_id, :integer
    add_column :cohorts, :teacher_id, :integer
  end
end
