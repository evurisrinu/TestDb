class CreateSevens < ActiveRecord::Migration
  def change
    create_table :sevens do |t|
      t.string :name

      t.timestamps
    end
  end
end
