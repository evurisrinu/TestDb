class CreateThirtysixes < ActiveRecord::Migration
  def change
    create_table :thirtysixes do |t|
      t.string :name

      t.timestamps
    end
  end
end
