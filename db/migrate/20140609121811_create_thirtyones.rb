class CreateThirtyones < ActiveRecord::Migration
  def change
    create_table :thirtyones do |t|
      t.string :name

      t.timestamps
    end
  end
end
