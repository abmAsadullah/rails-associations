class CreateUserEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :user_events do |t|
      t.references :event_attender
      t.references :attended_event

      t.timestamps
    end
  end
end
