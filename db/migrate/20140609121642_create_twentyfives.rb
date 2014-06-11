class CreateTwentyfives < ActiveRecord::Migration
  def change
    create_table :twentyfives do |t|
      t.string :name

      t.timestamps
    end
  end
end
