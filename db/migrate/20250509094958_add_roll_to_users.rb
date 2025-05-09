class AddRollToUsers < ActiveRecord::Migration[8.0]
  def change
    add_column :users, :roll, :string
  end
end
