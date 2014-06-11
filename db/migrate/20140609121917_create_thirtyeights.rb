class CreateThirtyeights < ActiveRecord::Migration
  def change
    create_table :thirtyeights do |t|
      t.string :name

      t.timestamps
    end
  end
end
