class CreateFifteens < ActiveRecord::Migration
  def change
    create_table :fifteens do |t|
      t.string :name

      t.timestamps
    end
  end
end
