class AddFieldsToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :username, :string
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :description, :string
    add_column :users, :admin, :boolean, default: false
    add_column :users, :active, :boolean, default: true
    add_column :users, :online, :boolean, default: true
    add_column :users, :verified, :boolean, default: false
  end
end
