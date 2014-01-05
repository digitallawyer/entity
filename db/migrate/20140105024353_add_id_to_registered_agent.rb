class AddIdToRegisteredAgent < ActiveRecord::Migration
  def change
    add_column :registered_agents, :corporation_id, :integer
  end
end
