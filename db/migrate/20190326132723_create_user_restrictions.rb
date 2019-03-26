class CreateUserRestrictions < ActiveRecord::Migration[5.2]
  def change
    create_table :user_restrictions do |t|
      t.integer :user_id
      t.integer :restriction_id

      t.timestamps
    end
  end
end
