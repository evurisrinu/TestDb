class CreateFives < ActiveRecord::Migration
  def change
    create_table :fives do |t|
      t.string :name

      t.timestamps
    end
  end
end
