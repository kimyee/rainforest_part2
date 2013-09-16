class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.integer :price_in_cents
      t.text :description

      t.timestamps
    end
  end
end
