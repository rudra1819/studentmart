class AddDetailsToUsers < ActiveRecord::Migration[8.0]
  def change
    add_column :users, :name, :string
    add_column :users, :profile_url, :string
    add_column :users, :location, :string
    add_column :users, :gender, :string
    add_column :users, :dob, :date
    add_column :users, :phone_number, :string
  end
end
