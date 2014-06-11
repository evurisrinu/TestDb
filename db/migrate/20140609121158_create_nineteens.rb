class CreateNineteens < ActiveRecord::Migration
  def change
    create_table :nineteens do |t|
      t.string :name

      t.timestamps
    end
  end
end
