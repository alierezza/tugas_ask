class CreateMarkovs < ActiveRecord::Migration
  def change
    create_table :markovs do |t|

      t.integer :platinum
      t.integer :dedicated
      t.integer :localloop
      t.string :layanan
      t.timestamps null: false
    end
  end
end
