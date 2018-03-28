# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

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

def rand_fake_name
    return @fake_names[rand(@fake_names.count)]
end

# UNCOMMENT TO POPULATE DANCERS
# @fake_names.each do |name|
#     Dancer.create(fake_name: name)

# end

# Create time slots for the day
@num_time_slots.times do |i|
    _time = @eight_pm + 15*i.minutes
    @timeSlots.append(TimeSlot.create(time: _time))
end

# Uncomment to add dancers to the time slots
# @slots = TimeSlot.all
# @slots.each do |s|
#     # s.upstairs_main = rand_fake_name()
#     # s.upstairs_secondary  = rand_fake_name()
#     # s.downstairs_one  = rand_fake_name()
#     # s.downstairs_two  = rand_fake_name()
#     # s.downstairs_booth  = rand_fake_name()
#     # s.downstairs_bar  = rand_fake_name()
# end    
# puts "current time"
# puts DateTime.now

# HELPERS
def open(day: string)
    return { "wednesday" => true, "thursday" => true, "friday" => true, "saturday" => true, "sunday" => true }.key?(day)
end


# def populate
#     30.times do |i|
#         @fifteens << i * @set_length
#     end
#     (0..30).each do |day_int|
#         @_day = @datetime + day_int
        
#         @fifteens.each do |x|
#             @timeSlots << @_day + x/@num_min_in_day_float
#         end
#     end
#     @timeSlots.each do |t|
#         if open(day: t.strftime('%A').downcase )
#             @poles.each do |pole|
#                 SetTime.create(fake_name: rand_fake_name, stage_name: pole, time: t)
#             end
#         end    
#     end
# end    


# UNCOMMENT TO POPULATE SET TIMES DB
#populate

