class CreateEventAttendees < ActiveRecord::Migration[5.1]
  def change
    create_table :event_attendees, id:false do |t|
      t.integer :user_id
      t.integer :event_id

      t.timestamps
    end
    add_index :event_attendees, :user_id
    add_index :event_attendees, :event_id
    add_index :event_attendees, [:user_id, :event_id], unique: :true
  end
end
