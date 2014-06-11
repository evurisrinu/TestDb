class CreateEightteens < ActiveRecord::Migration
  def change
    create_table :eightteens do |t|
      t.string :name

      t.timestamps
    end
  end
end
