class CreateUserMeta < ActiveRecord::Migration
  def change
    create_table :user_meta do |t|
      t.integer :user_id
      t.string :meta_key
      t.string :meta_value

      t.timestamps null: false
    end
  end
end
