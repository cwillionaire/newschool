class CreateTopics < ActiveRecord::Migration
  def change
    create_table :topics do |t|
      t.string :subjectx
      t.integer :student_id

      t.timestamps null: false
    end
  end
end
