class CreateTwentynines < ActiveRecord::Migration
  def change
    create_table :twentynines do |t|
      t.string :name

      t.timestamps
    end
  end
end
