class RemoveColumnnameFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :Last_name, :text
  end
end
