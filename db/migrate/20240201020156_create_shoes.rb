class CreateShoes < ActiveRecord::Migration[7.1]
  def change
    create_table :shoes do |t|
      t.references :user, null: false, foreign_key: true
      t.string :brand
      t.integer :size
      t.string :color

      t.timestamps
    end
  end
end
