class CreateRaindata < ActiveRecord::Migration[6.0]
  def change
    create_table :raindata do |t|
      t.references :rainstation, null: false, foreign_key: true
      t.datetime :rain

      t.timestamps
    end
  end
end
