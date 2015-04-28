class CreateDogs < ActiveRecord::Migration
  def change
    create_table :dogs do |t|
      t.string :name
      t.string :breed
      t.string :description
      t.integer :age

      t.timestamps null: false
    end
  end
end
