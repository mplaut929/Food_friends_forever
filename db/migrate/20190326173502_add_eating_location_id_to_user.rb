class AddEatingLocationIdToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :eating_location_id, :integer
  end
end
