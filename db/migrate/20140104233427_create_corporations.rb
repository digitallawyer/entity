class CreateCorporations < ActiveRecord::Migration
  def change
    create_table :corporations do |t|
      t.string :name
      t.string :extension
      t.string :share_number
      t.string :share_value

      t.timestamps
    end
  end
end
