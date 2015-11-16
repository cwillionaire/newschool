class AddValuesToTeachers < ActiveRecord::Migration
  def change
    add_column :teachers, :name, :string
    add_column :teachers, :username, :string
    add_column :teachers, :favsub, :string
  end
end
