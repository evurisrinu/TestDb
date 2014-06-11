class CreateFours < ActiveRecord::Migration
  def change
    create_table :fours do |t|
      t.string :name

      t.timestamps
    end
  end
end
