class AddIndexToEventEntry < ActiveRecord::Migration
  def change
    add_index :event_entries, :user_id
    add_index :event_entries, :event_id
  end
end
