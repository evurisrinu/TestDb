class CreateElevens < ActiveRecord::Migration
  def change
    create_table :elevens do |t|
      t.string :name

      t.timestamps
    end
  end
end
