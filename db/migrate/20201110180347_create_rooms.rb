class CreateRooms < ActiveRecord::Migration[6.0]
  def change
    create_table :rooms do |t|
      t.references :user
      t.integer :room_no
      t.timestamps
    end
  end
end
