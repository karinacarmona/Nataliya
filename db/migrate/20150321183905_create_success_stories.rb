class CreateSuccessStories < ActiveRecord::Migration
  def change
    create_table :success_stories do |t|
      t.string :photo_url
      t.string :date
      t.string :title
      t.text :description
      t.timestamps null: false
    end
  end
end
