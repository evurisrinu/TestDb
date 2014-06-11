class CreateSeventeens < ActiveRecord::Migration
  def change
    create_table :seventeens do |t|
      t.string :name

      t.timestamps
    end
  end
end
