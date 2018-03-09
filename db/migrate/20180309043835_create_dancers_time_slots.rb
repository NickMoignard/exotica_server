class CreateDancersTimeSlots < ActiveRecord::Migration[5.1]
  def change
    create_table :dancers_time_slots do |t|
      t.references :dancer, foreign_key: true
      t.references :time_slot, foreign_key: true

      t.timestamps
    end
  end
end
