#this controls the interface with the user

class MedSearch::CLI

def call
puts "Welcome to Med Search!  I work!"
drug_query
end

def send_info
  #returns the drug info that the user is looking for
  puts "Here is a description of the drug."
end

def drug_query
  puts "Enter the name of the medication you are interested in learning about:"
end


end
