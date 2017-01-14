class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :provider
      t.string :uid
      t.string :name
      t.string :email
      t.date   :date_of_birth
      t.string :bio
      t.string :interest, default: "Both"
      t.timestamps null: false
    end
    add_index :name,:email, unique: true
  end
end
