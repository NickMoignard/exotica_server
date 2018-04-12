desc "add new time_slots for today"
task :time_slots_reset do
  # CREATE TIMESLOTS
    Rails.application.load_seed
end