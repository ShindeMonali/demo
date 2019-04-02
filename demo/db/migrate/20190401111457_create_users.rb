class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :First_name
      t.text :Last_name
      t.text :City

      t.timestamps
    end
  end
end
