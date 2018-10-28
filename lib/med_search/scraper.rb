class MedSearch::Scraper

  def self.send_info(input)
    #returns the drug info that the user is looking for
    #this method might belong better in the scraper class and then I will call it with Scraper.send_info(drug)
    #this will eventually take the input and put it at the end of the URL we need to scrap
    html = open("https://www.goodrx.com/#{input}")
    doc = Nokogiri::HTML(html)
    drug_url = "https://www.goodrx.com/#{input}"
    dosage = doc.css('#uat-dropdown-dosage').text
    quantity = doc.css('#uat-dropdown-quantity').text
    drugs = []
     doc.css('#uat-drug-alternatives a').each do |drug|
     drugs << drug.text
    end
    drugs_list = drugs.uniq



  end

end
