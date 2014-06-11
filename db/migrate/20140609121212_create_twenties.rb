class CreateTwenties < ActiveRecord::Migration
  def change
    create_table :twenties do |t|
      t.string :name

      t.timestamps
    end
  end
end
