class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.integer :user_id
      t.string :name
      t.string :contact
      t.string :email
      t.string :phone
      t.string :fax
      t.string :currency
      t.text :website
      t.text :address

      t.timestamps null: false
    end
  end
end
