class AddFieldsToCompany < ActiveRecord::Migration[7.0]
  def change
    add_column :companies, :name, :string, null:false
    add_column :companies, :address, :string, null:false
    add_column :companies, :county, :string, null:false
  end
end
