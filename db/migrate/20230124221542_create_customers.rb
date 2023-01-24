class CreateCustomers < ActiveRecord::Migration[7.0]
  def change
    create_table :customers do |t|
      t.string :name
      t.references :address, index: true, foreign_key: true

      t.timestamps
    end
  end
end
