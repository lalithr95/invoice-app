class CreateClientInvoices < ActiveRecord::Migration
  def change
    create_table :client_invoices do |t|
      t.string :client_id, index: true
      t.string :title, index: true
      t.integer :po_number
      t.date :issue_date, default: Date.today, index: true
      t.boolean :visible, default: true
      t.string :public_url, index: true
      t.integer :recur, default: 0
      t.date :due_date, default: Date.today
      t.boolean :paid, default: false, index: true
      t.string :currency
      t.float :discount, default: 0.0
      t.boolean :allow_bank_payment, default: true
      t.string :tax_type
      t.float :tax, default: 0.0
      t.text :top_note
      t.text :internal_note
      t.text :bottom_note

      t.timestamps null: false
    end
  end
end
