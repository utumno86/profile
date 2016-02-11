class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.references :user, index: true, foreign_key: true
      t.string :purpose
      t.decimal :amount

      t.timestamps null: false
    end
  end
end
