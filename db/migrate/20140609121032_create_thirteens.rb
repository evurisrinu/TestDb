class CreateThirteens < ActiveRecord::Migration
  def change
    create_table :thirteens do |t|
      t.string :name

      t.timestamps
    end
  end
end
