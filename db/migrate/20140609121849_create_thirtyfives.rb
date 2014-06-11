class CreateThirtyfives < ActiveRecord::Migration
  def change
    create_table :thirtyfives do |t|
      t.string :name

      t.timestamps
    end
  end
end
