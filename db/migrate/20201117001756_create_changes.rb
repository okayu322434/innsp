class CreateChanges < ActiveRecord::Migration[6.0]
  def change
    create_table :changes do |t|
      t.references :user
      t.references :room
      t.text :message, null: false
      t.integer :spot, null: false
      t.text :comment, null: false
      t.timestamps
    end
  end
end
