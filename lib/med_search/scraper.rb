class MedSearch::Scraper


  def self.scrape_info(input)
    #this method scrapes goodrx.com for information about the drug the user has inputted and it creates a hash of attributes.
    html = open("https://www.goodrx.com/#{input}")
    doc = Nokogiri::HTML(html)
    drug_hash = {}
    drugs = []
     doc.css('#uat-drug-alternatives a').each do |drug|
     drugs << drug.text
    end
    drugs_list = drugs.uniq
    drug_url = "https://www.goodrx.com/#{input}"
    dosage = doc.css('#uat-dropdown-dosage').text
    quantity = doc.css('#uat-dropdown-quantity').text
    description = doc.css('#uat-drug-info').text
    drug_hash[:drug_name] = input
    drug_hash[:drugs_list] = drugs_list
    drug_hash[:drug_url] = drug_url
    drug_hash[:dosage] = dosage
    drug_hash[:quantity] = quantity
    drug_hash[:description] = description
     MedSearch::Drug.new(drug_hash)
  end
end
