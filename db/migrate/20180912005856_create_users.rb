class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.integer :role
      t.string :name
      t.string :discipline

      t.timestamps
    end
  end
end
