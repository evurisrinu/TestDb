class CreateThirtythrees < ActiveRecord::Migration
  def change
    create_table :thirtythrees do |t|
      t.string :name

      t.timestamps
    end
  end
end
