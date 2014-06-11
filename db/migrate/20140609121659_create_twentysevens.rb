class CreateTwentysevens < ActiveRecord::Migration
  def change
    create_table :twentysevens do |t|
      t.string :name

      t.timestamps
    end
  end
end
