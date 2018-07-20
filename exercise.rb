# def train_search(train_array)
#
#   possible_trains = []
#   train_array.each do |trains|
#     if trains[:direction] == "north"
#       possible_trains << trains
#     end
#
#   end
#   return possible_trains
# end

trains = [
{train: "72C", frequency_in_minutes: 15, direction: "north"},
{train: "72D", frequency_in_minutes: 15, direction: "south"},
{train: "610", frequency_in_minutes: 5, direction: "north"},
{train: "611", frequency_in_minutes: 5, direction: "south"},
{train: "80A", frequency_in_minutes: 30, direction: "east"},
{train: "80B", frequency_in_minutes: 30, direction: "west"},
{train: "110", frequency_in_minutes: 15, direction: "north"},
{train: "111", frequency_in_minutes: 15, direction: "south"}
]

# north_trains = train_search(trains)
#   north_trains.each do |trains|
#     p trains[:train]
#
#   end

train111dir = trains[7].values_at(:direction)
puts train111dir

train80Bfreq = trains[5].values_at(:frequency_in_minutes)
puts train80Bfreq

train610dir = trains[2].values_at(:direction)
puts train610dir

puts "----------------------"

def direction(array,dir)
  traindir = []
  # notnorth = []
  array.each do |a|
    # puts a.values_at(:direction)
    if a[:direction] == "#{dir}"
      traindir << a
    # else
    #   notnorth << a
    end
  end
  puts traindir
end


# puts north
# puts notnorth

puts "===================="
# n=0
# m=[]
# o=[]
# while n<trains.length
#   # puts trains[n].values_at(:direction)
#   if trains[n][:direction] == "north"
#     m << trains[n]
#   # else
#   #   o << trains[n]
#   end
#   n+=1
# end
# puts m
# # puts o
#
#
# puts "----------s-s-ds-d-fs-df-sf"



# n=0
# m=[]
# o=[]
# while n<trains.length
#   # puts trains[n].values_at(:direction)
#   if trains[n].values_at(:direction) == "north"
#     puts n.inspect
#     m << trains[n]
#     puts m.inspect
#   # else
#   #   o << trains[n]
#   end
#   n+=1
# end

puts direction(trains,"north")
puts direction(trains,"east")

trains[4][:first_departure_time] = 5

puts trains
