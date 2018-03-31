@poles = ["Upstairs Main", "Upstairs Secondary", "Downstairs Main", "Downstairs Booth", "Downstairs Bar"]
@fake_names = ["Alexa", "Siri", "Sarah", "Lauren", "Tilly", "Cleo", "Arial", "Lexi", "Tonya", "Natasha", "Susie", "Philipa"]
@full_name = "Jane Doe"
@account = 50.0
@cur_time = Time.current
@eight_pm = @cur_time.change(hour: 20, minute: 0, second: 0)
@fifteens = []
@timeSlots = []
@days = { "wednesday" => true, "thursday" => true, "friday" => true, "saturday" => true, "sunday" => true }
@num_min_in_day_float = 1440.0
@num_time_slots = 36
@set_length = 15

# CREATE TIMESLOTS
@num_time_slots.times do |i|
    _time = @eight_pm + 15*i.minutes
    @timeSlots.append(TimeSlot.create(time: _time))
end

# CREATE DANCERS
# @fake_names.each do |name|
#     Dancer.create(fake_name: name)
# end

# POPULATE TIMESLOTS WITH DANCERS
# @slots = TimeSlot.all
# @slots.each do |s|
#     s.downstairs_booth  = rand_fake_name()    
#     s.upstairs_main = rand_fake_name()
#     s.upstairs_secondary  = rand_fake_name()
#     s.downstairs_one  = rand_fake_name()
#     s.downstairs_two  = rand_fake_name()
#     s.downstairs_bar  = rand_fake_name()
# end  

# HELPERS
def rand_fake_name
    return @fake_names[rand(@fake_names.count)]
end

def open(day: string)
    return { "wednesday" => true, "thursday" => true, "friday" => true, "saturday" => true, "sunday" => true }.key?(day)
end


