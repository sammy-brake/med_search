class MedSearch::Scraper

  def self.send_info(input)
    #returns the drug info that the user is looking for
    #this method might belong better in the scraper class and then I will call it with Scraper.send_info(drug)
    #this will eventually take the input and put it at the end of the URL we need to scrap
    html = open("https://www.goodrx.com/#{input}")
    doc = Nokogiri::HTML(html)

    puts "You want to learn about #{input.capitalize}"
    puts "#{input.capitalize} is also known as #{doc.css('#uat-drug-alternatives a').text}"

  end

end
