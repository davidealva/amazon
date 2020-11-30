class AddDetailsToAccounts < ActiveRecord::Migration[6.0]
  def change
    add_column :accounts, :type, :string
    add_column :accounts, :category, :string
    add_column :accounts, :provider_name, :string
    add_column :accounts, :address1, :string
    add_column :accounts, :address2, :string
    add_column :accounts, :city, :string
    add_column :accounts, :state, :string
    add_column :accounts, :zip, :string
    add_column :accounts, :phone, :string
    add_column :accounts, :url, :string
    add_column :accounts, :email, :string
    add_column :accounts, :description, :text
    add_column :accounts, :conditions, :string
    add_column :accounts, :contact_name, :string
    add_column :accounts, :contact_number, :string
    add_column :accounts, :contact_email, :string
    add_column :accounts, :contact_title, :string
  end
end
