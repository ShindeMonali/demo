class AddCityToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :City, :string
  end
end
