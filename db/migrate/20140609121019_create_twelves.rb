class CreateTwelves < ActiveRecord::Migration
  def change
    create_table :twelves do |t|
      t.string :name

      t.timestamps
    end
  end
end
