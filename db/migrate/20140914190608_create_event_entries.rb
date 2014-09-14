class CreateEventEntries < ActiveRecord::Migration
  def change
    create_table :event_entries do |t|
      t.integer :user_id
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :name_on_certificate
      t.boolean :paid
      t.boolean :accomodation_request
      t.integer :event_id

      t.timestamps
    end
  end
end
