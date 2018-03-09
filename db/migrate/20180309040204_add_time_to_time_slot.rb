class AddTimeToTimeSlot < ActiveRecord::Migration[5.1]
  def change
    add_column :time_slots, :time, :time
  end
end
