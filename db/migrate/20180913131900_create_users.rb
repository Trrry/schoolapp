class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :first_name, :null => true
      t.string :last_name, :null => true
      t.string :patronymic, :null => true
      t.string :phone, :null => true
      t.string :role, null: false, default: "parent"
      t.string :email
      t.string :password_digest
      t.timestamps
    end
  end
end
