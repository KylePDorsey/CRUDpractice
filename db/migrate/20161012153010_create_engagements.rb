class CreateEngagements < ActiveRecord::Migration
  def change
    create_table :engagements do |t|
      t.integer :attendee_id, :event_id

      t.timestamps(null: false)
    end
  end
end
