class AddAvatarToMeals < ActiveRecord::Migration[6.1]
  def change
    add_column :meals, :avatar, :string
  end
end
