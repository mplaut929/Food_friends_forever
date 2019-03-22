class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :username
      t.integer :age
      t.string :city
      t.text :bio
      t.string :profile_pic

      t.timestamps
    end
  end
end
