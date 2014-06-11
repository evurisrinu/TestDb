class CreateThirtynines < ActiveRecord::Migration
  def change
    create_table :thirtynines do |t|
      t.string :name

      t.timestamps
    end
  end
end
