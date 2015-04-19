class CreateVolunteers < ActiveRecord::Migration
  def change
    create_table :volunteers do |t|
      t.string :first_name
      t.string :last_name
      t.string :address
      t.string :city
      t.string :state
      t.string :postal_code
      t.string :country
      t.string :telephone
      t.string :mobile
      t.string :email
      t.string :birthday_month
      t.string :birthday_day
      t.string :birthday_year
      t.text :position_question
      t.string :ec_name
      t.string :ec_telephone
      t.boolean :mon_am
      t.boolean :mon_pm
      t.boolean :tues_am
      t.boolean :tues_pm
      t.boolean :wed_am
      t.boolean :wed_pm
      t.boolean :thurs_am
      t.boolean :thurs_pm
      t.boolean :fri_am
      t.boolean :fri_pm
      t.integer :hours_available
      t.string :day_or_week_available
      t.text :why_interested
      t.text :skills
      t.text :convictions

      t.timestamps null: false
    end
  end
end
