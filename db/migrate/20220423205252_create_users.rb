class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users, id: :uuid do |t|
      t.string :first_name
      t.string :last_name
      t.string :email, null: false
      t.string :password_digest, null: false
      t.string :city
      t.string :address
      t.integer :phone
      t.string :country

      t.timestamps
    end
  end
end
