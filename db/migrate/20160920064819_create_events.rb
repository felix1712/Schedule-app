class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
        t.text :summary
        t.datetime :start_at
        t.datetime :end_at
        t.string :location

      t.timestamps
    end
  end
end
