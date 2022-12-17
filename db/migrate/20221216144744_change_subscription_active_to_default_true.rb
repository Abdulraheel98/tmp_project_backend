class ChangeSubscriptionActiveToDefaultTrue < ActiveRecord::Migration[7.0]
  def change
    change_column(:subscriptions, :active, :boolean, default: true)
  end
end
