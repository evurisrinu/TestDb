class CreateTwentytwos < ActiveRecord::Migration
  def change
    create_table :twentytwos do |t|
      t.string :name

      t.timestamps
    end
  end
end
