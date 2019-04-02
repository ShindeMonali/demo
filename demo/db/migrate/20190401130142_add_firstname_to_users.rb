class AddFirstnameToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :Firstname, :string
  end
end
