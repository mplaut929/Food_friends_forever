class AddShoppingIdToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :shopping_id, :integer
  end
end
