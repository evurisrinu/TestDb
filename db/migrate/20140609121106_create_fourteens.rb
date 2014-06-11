class CreateFourteens < ActiveRecord::Migration
  def change
    create_table :fourteens do |t|
      t.string :name

      t.timestamps
    end
  end
end
