class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.date :start_day
      t.date :end_day
      t.boolean :day_all
      t.text :content

      t.timestamps
    end
  end
end
