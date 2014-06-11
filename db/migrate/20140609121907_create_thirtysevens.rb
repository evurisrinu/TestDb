class CreateThirtysevens < ActiveRecord::Migration
  def change
    create_table :thirtysevens do |t|
      t.string :name

      t.timestamps
    end
  end
end
