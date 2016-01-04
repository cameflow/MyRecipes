class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.text :review
      t.timestamps
      t.integer :chef_id
      t.integer :recipe_id
    end
  end
end
