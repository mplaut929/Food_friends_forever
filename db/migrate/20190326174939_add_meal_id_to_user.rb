class AddMealIdToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :meal_id, :integer
  end
end
