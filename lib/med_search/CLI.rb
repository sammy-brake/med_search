#this controls the interface with the user
require 'pry'
class MedSearch::CLI

def call
puts "Welcome to Med Search!  I work!"
input = drug_query
send_info(input)
end

def drug_query
  puts "Enter the name of the medication you are interested in learning about:"
  input = gets.strip

end

def send_info(input)
  #returns the drug info that the user is looking for
  puts "Here is a description of the drug."
  puts "You want to learn about #{input}"
end


end
