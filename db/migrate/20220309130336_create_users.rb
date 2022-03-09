class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string  :name
      t.string  :login, null: false, unique: true
      t.string  :password, null: false
      t.string  :role
      t.timestamps
    end
  end
end
