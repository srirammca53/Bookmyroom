class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.string :name
      t.boolean :status
      t.datetime :from_date
      t.datetime :to_date

      t.timestamps null: false
    end
  end
end
