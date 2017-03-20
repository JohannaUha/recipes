class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.integer :recipe_id
      t.integer :user_id
      t.integer :score
      t.text :comment

      t.timestamps null: false
    end
  end
end
