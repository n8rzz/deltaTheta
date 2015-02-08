class CreateOptions < ActiveRecord::Migration
  def change
    create_table :options do |t|
      t.string :ticker
      t.string :side
      t.string :optiontype
      t.integer :contracts
      t.integer :size
      t.datetime :expiration
      t.decimal :strike, :entryfee, :exitfee, :precision => 6, :scale => 2
      t.decimal :entryprice, :exitprice, :precision => 12, :scale => 4
      t.datetime :entrydate
      t.datetime :exitdate
      t.boolean :isactive

      t.timestamps null: false
    end
  end
end
