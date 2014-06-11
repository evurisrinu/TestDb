class CreateTwentyones < ActiveRecord::Migration
  def change
    create_table :twentyones do |t|
      t.string :name

      t.timestamps
    end
  end
end
