class CreateTwentysixes < ActiveRecord::Migration
  def change
    create_table :twentysixes do |t|
      t.string :name

      t.timestamps
    end
  end
end
