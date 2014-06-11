class CreateEights < ActiveRecord::Migration
  def change
    create_table :eights do |t|
      t.string :name

      t.timestamps
    end
  end
end
