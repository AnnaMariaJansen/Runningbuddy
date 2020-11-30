class AddAvatarUrlToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :avatar_url, :string, default: "https://www.vippng.com/png/detail/416-4161690_empty-profile-picture-blank-avatar-image-circle.png"
  end
end

