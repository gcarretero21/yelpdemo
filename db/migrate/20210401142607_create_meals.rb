class CreateMeals < ActiveRecord::Migration[6.1]
  def change
    create_table :meals do |t|
      t.string :day_time
      t.string :item1
      t.string :item2
      t.string :item3
      t.string :item4

      t.timestamps
    end
  end
end
