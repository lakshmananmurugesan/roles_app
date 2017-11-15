class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.integer :role_id
      t.integer :user_meta_id

      t.timestamps null: false
    end
  end
end
