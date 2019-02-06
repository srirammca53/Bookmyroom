class CreateReserves < ActiveRecord::Migration
  def change
    create_table :reserves do |t|
      t.string :user_id
      t.string :book_id

      t.timestamps null: false
    end
  end
end
