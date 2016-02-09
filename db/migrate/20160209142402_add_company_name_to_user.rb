class AddCompanyNameToUser < ActiveRecord::Migration
  def change
    add_column :users, :company_name, :string, index: true
    add_column :users, :company_phone, :string, index: true
    add_column :users, :company_fax, :string, index: true
    add_column :users, :company_address, :string, index: true
    add_column :users, :company_info, :string, index: true
  end
end
