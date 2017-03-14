class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :name
      t.integer :user_id
      t.integer :level_id
      t.integer :active_time
      t.integer :inactive_time
      t.boolean :vegetarian
      t.boolean :vegan
      t.boolean :lactose_free
      t.boolean :gluten_free
      t.text :description

      t.timestamps null: false
    end
  end
end
