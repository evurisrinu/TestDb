class CreateTwentyeights < ActiveRecord::Migration
  def change
    create_table :twentyeights do |t|
      t.string :name

      t.timestamps
    end
  end
end
