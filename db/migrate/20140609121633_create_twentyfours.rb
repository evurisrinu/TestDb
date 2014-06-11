class CreateTwentyfours < ActiveRecord::Migration
  def change
    create_table :twentyfours do |t|
      t.string :name

      t.timestamps
    end
  end
end
