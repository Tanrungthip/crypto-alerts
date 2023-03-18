class CreatePriceAlerts < ActiveRecord::Migration[7.0]
  def change
    create_table :price_alerts do |t|
      t.string :cryptocurrency
      t.float :price
      t.string :fiatcurrency
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
