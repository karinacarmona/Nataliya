class CreateEducations < ActiveRecord::Migration
  def change
    create_table :educations do |t|
      t.references :volunteers
      t.string :dates
      t.text :qualification_courses
      t.text :place_of_education
      t.string :grade
      t.timestamps null: false
    end
  end
end
