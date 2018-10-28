#this controls the interface with the user
require 'pry'
class MedSearch::CLI

def call
puts "I work!  Would you like to look up a medication?"
input = drug_query
if input == 'quit'
  goodbye
else
send_info(input)
second_call
end
end

def second_call
  input = drug_query
  if input == 'quit'
    goodbye
  else
  send_info(input)
  second_call
  end
end

def drug_query
  puts "Enter the name of the medication you are interested in learning about or enter quit to exit:"
  input = gets.strip
end

def send_info(input)
  #returns the drug info that the user is looking for
  puts "Here is a description of the drug."
  puts "You want to learn about #{input}"
end

def goodbye
  puts "Goodbye!"
end


end
