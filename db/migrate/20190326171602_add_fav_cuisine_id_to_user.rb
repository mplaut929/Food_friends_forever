class AddFavCuisineIdToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :fav_cuisine_id, :integer
  end
end
