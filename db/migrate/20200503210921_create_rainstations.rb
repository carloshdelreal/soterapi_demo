class CreateRainstations < ActiveRecord::Migration[6.0]
  def change
    create_table :rainstations do |t|
      t.integer :code
      t.float :lat
      t.float :lng

      t.timestamps
    end
  end
end
