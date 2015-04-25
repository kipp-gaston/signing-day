class AddCurrentDonationAmountToEvents < ActiveRecord::Migration
  def change
    add_column :events, :current_donation_amount, :float, default: 0.0
  end
end
