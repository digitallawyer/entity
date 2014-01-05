class CreateRegisteredAgents < ActiveRecord::Migration
  def change
    create_table :registered_agents do |t|
      t.string :name
      t.string :address_line_1
      t.string :address_line_2
      t.string :city
      t.string :state
      t.string :postal_code
      t.string :country

      t.timestamps
    end
  end
end
