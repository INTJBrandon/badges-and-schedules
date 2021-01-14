# Write your code here.
attendees = ["Edsger", "Ada", "Charles", "Alan", "Grace", "Linus", "Matz"]
def badge_maker(name)
    return "Hello, my name is #{name}."
end

def batch_badge_creator(array)
    messages = []
    array.each do | name |
      message =  badge_maker(name)
      messages << message
    end
    return messages
end

def assign_rooms(array)
    assignment = []
    array.each_with_index do | speaker, index |
        assigns = "Hello, #{speaker}! You'll be assigned to room #{index + 1}!"
        assignment << assigns
    end
    return assignment
end

def printer(attendees)
    badges = batch_badge_creator(attendees)
    rooms = assign_rooms(attendees)
    badges.each do | speaker |
        puts speaker
    end
    rooms.each do | room |
        puts room
    end
end

