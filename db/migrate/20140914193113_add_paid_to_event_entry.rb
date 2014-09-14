class AddPaidToEventEntry < ActiveRecord::Migration
  def change
    add_column :event_entries, :paid, :boolean
  end
end
