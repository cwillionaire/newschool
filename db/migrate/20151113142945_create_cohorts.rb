class CreateCohorts < ActiveRecord::Migration
  def change
    create_table :cohorts do |t|
      t.string :subject

      t.timestamps null: false
    end
  end
end
