class AddAvatarToUsersships < ActiveRecord::Migration[5.2]
  def change
    add_column :usersships, :avatar, :string
  end
end
