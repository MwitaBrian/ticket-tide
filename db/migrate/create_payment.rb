class CreatePayments < ActiveRecord::Migration[6.1]
    def change
      create_table :payments do |t|
        t.references :user, null: false, foreign_key: true
        t.references :event, null: false, foreign_key: true
        t.decimal :amount, precision: 10, scale: 2, null: false
        t.string :currency, null: false
        t.text :description, null: false
  
        t.timestamps
      end
    end
  end
  
  
  
  
  