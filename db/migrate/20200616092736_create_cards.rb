class CreateCards < ActiveRecord::Migration[6.0]
  def change
    create_table :cards do |t|
      t.integer :likes, :default => 0 
      t.string :image
      
      t.timestamps
    end
  end
end
