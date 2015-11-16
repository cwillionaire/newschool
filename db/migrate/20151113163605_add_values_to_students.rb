class AddValuesToStudents < ActiveRecord::Migration
  def change
    add_column :students, :cohort, :string
    add_column :students, :cohort_id, :integer
    add_column :students, :rating, :integer
  end
end
