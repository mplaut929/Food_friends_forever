class AddTitleToAvatar < ActiveRecord::Migration[5.2]
  def change
    add_column :avatars, :title, :string
  end
end
