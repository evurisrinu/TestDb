class CreateNines < ActiveRecord::Migration
  def change
    create_table :nines do |t|
      t.string :name

      t.timestamps
    end
  end
end
