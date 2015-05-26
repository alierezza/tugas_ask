class CreateRegressions < ActiveRecord::Migration
  def change
    create_table :regressions do |t|
      t.integer :harga
      t.integer :tahun
      t.integer :km
      t.timestamps null: false
    end
  end
end
