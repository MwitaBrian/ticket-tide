class CreatePayments < ActiveRecord::Migration[7.0]
  def change
    create_table :payments do |t|
      t.decimal :amount
      t.string :currency
      t.string :description
      t.references :user, null: false, foreign_key: true
      t.references :event, null: false, foreign_key: true

      t.timestamps
    end
  end
end
