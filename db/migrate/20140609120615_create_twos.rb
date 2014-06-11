class CreateTwos < ActiveRecord::Migration
  def change
    create_table :twos do |t|
      t.string :name

      t.timestamps
    end
  end
end
