class CreateMarksheets < ActiveRecord::Migration
  def change
    create_table :marksheets do |t|
      t.string :student_name
      t.string :grade
      t.integer :marks
      t.timestamps
    end
  end
end
