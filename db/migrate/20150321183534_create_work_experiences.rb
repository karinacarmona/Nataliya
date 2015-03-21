class CreateWorkExperiences < ActiveRecord::Migration
  def change
    create_table :work_experiences do |t|
      t.references :volunteers
      t.string :dates
      t.text :employer
      t.text :job
      t.text :reason_for_leaving
      t.timestamps null: false
    end
  end
end
