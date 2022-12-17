class AddStripeIdToTechnicians < ActiveRecord::Migration[7.0]
  def change
    add_column :technicians, :stripe_id, :string
  end
end
