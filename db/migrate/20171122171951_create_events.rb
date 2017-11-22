class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.integer :user_id
      t.string :name
      t.text :description
      t.datetime :date

      t.timestamps
    end
  end
end
