class RemoveAccessLevelFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :access_level, :string
  end
end
