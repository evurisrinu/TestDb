class CreateOnes < ActiveRecord::Migration
  def change
    create_table :ones do |t|
      t.string :name

      t.timestamps
    end
  end
end
