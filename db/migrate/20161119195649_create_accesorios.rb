class CreateAccesorios < ActiveRecord::Migration
  def change
    create_table :accesorios do |t|
      t.string :name
      t.text :description
      t.string :picture
      t.decimal :cost
      t.string :availability

      t.timestamps
    end
  end
end
