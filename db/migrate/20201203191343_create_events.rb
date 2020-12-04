class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :event_name
      t.string :contact
      t.string :address
      t.string :city
      t.string :state
      t.string :zip
      t.string :phone
      t.string :event_url
      t.string :event_email
      t.text :description
      t.date :date
      t.datetime :time
      t.string :cost

      t.timestamps
    end
  end
end
