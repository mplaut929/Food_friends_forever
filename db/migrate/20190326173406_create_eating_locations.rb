class CreateEatingLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :eating_locations do |t|
      t.string :name

      t.timestamps
    end
  end
end
