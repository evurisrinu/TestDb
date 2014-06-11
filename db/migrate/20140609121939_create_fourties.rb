class CreateFourties < ActiveRecord::Migration
  def change
    create_table :fourties do |t|
      t.string :name

      t.timestamps
    end
  end
end
