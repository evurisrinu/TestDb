class CreateThirtyfours < ActiveRecord::Migration
  def change
    create_table :thirtyfours do |t|
      t.string :name

      t.timestamps
    end
  end
end
