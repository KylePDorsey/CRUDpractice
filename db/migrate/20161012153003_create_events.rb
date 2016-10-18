class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.datetime :start_time, :end_time
      t.string :title, :description, :category
      t.integer :creator_id

      t.timestamps(null: false)
    end
  end
end
