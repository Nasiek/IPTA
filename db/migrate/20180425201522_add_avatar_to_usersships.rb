class AddAvatarToUsersships < ActiveRecord::Migration[5.2]
  def change
    add_column :ships, :avatar, :string
  end
end
