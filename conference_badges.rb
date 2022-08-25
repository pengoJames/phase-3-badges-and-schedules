# Write your code here.
def badge_maker(name)
    "Hello, my name is #{name}." 
end
p badge_maker("Arel")


def batch_badge_creator(attendees)

    #create new array to hold names
    array = []
    #loop through each name as you add the message to the to the new array holding the names
    attendees.each{ |name| array << badge_maker(name) }
    #return the new array
    array
end
p batch_badge_creator(["Edsger", "Ada", "Charles", "Alan", "Grace", "Linus", "Matz"])

def assign_rooms(attendees)

    array = []
    #each_with_index keep track of the index number of current iteration
    attendees.each_with_index do |name, index| 
        array << "Hello, #{name}! You'll be assigned to room #{index+1}!"
    end
    array
end
p assign_rooms(["Edsger", "Ada", "Charles", "Alan", "Grace", "Linus", "Matz"])


def printer(attendees)

    #print the name of each index in the array
    batch_badge_creator(attendees).each { |names| puts names }
    assign_rooms(attendees).each { |room| puts room }
end
printer(["Edsger", "Ada", "Charles", "Alan", "Grace", "Linus", "Matz"])
