class CreateSixteens < ActiveRecord::Migration
  def change
    create_table :sixteens do |t|
      t.string :name

      t.timestamps
    end
  end
end
