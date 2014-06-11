class CreateTens < ActiveRecord::Migration
  def change
    create_table :tens do |t|
      t.string :name

      t.timestamps
    end
  end
end
