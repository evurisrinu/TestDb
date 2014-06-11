class CreateThirtytwos < ActiveRecord::Migration
  def change
    create_table :thirtytwos do |t|
      t.string :name

      t.timestamps
    end
  end
end
