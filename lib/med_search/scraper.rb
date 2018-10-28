class MedSearch::Scraper

  def self.send_info(input)
    #returns the drug info that the user is looking for
    #this method might belong better in the scraper class and then I will call it with Scraper.send_info(drug)
    #this will eventually take the input and put it at the end of the URL we need to scrap
    puts "Here is a description of the drug."
    puts "You want to learn about #{input}"
  end

end
