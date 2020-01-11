class CreateOwners < ActiveRecord::Migration[6.0]
  def change
    create_table :owners do |t|
      t.string :name
      t.string :gender
      t.integer :age
      t.string :adress
      t.text :message

      t.timestamps
    end
  end
end
