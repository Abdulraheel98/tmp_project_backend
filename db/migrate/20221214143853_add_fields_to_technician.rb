class AddFieldsToTechnician < ActiveRecord::Migration[7.0]
  def change
    add_column :technicians, :name, :string, null:false
    add_column :technicians, :age, :string, null:false
    add_column :technicians, :nationality, :string, null:false
    add_column :technicians, :work_allowed, :string, null:false
    add_column :technicians, :id_ausweis, :string
    add_column :technicians, :number_of_years_work_experiance, :string

  end
end
