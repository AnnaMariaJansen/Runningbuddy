class ChangeColumnDefaultOfUsers < ActiveRecord::Migration[6.0]
  def change
    change_column_default :users, :avatar_url, "https://images.unsplash.com/photo-1524957467802-e4a9b20bcd5c?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8ZXhpdCUyMGdyZWVufGVufDB8fDB8&auto=format&fit=crop&w=800&q=60"
  end
end
