class AddIdToIncorporator < ActiveRecord::Migration
  def change
    add_column :incorporators, :corporation_id, :integer
  end
end
