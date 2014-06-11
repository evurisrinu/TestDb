class CreateTwentythrees < ActiveRecord::Migration
  def change
    create_table :twentythrees do |t|
      t.string :name

      t.timestamps
    end
  end
end
