class CreateCalories < ActiveRecord::Migration
  def change
    create_table :calories do |t|
      t.integer :calorie_in
      t.integer :calorie_out
      t.integer :weight
      t.integer :height

      t.timestamps
    end
  end
end
