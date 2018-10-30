class MedSearch::Drug
  attr_accessor :drug_url, :description, :dosage, :quantity, :drugs_list, :drug_name

  @@all = []

  def initialize(attributes)
    attributes.each do |attribute, value|
     self.send("#{attribute}=", value)
   end
   @@all << self
  end

  def self.drugs_researched
    puts "------------------------------------------".colorize(:red)
    puts "    Previously Researched Medications"
    @@all.each.with_index(1) do |drug, index|
      puts "#{index}. #{drug.drug_name.capitalize}"
    end
    puts "------------------------------------------".colorize(:red)
  end

  def self.find_by_drug_name(drug_name)
    @@all.find {|drug| drug.drug_name == drug_name}
  end

  def self.find_or_instantiate(drug_name)
    self.find_by_drug_name(drug_name) || MedSearch::Scraper.scrape_info(drug_name)
  end

  def self.drug_info(input)
    @@all.each do |drug|
      if drug.drug_name == input
    puts "-------------------------------------".colorize(:red)
    puts "         #{input.capitalize}     ".colorize(:cyan)
    puts "This medication is also known as: #{drug.drugs_list.join(", ").colorize(:cyan)}."
    puts drug.description
    puts "The most common dosage for this medication is #{drug.dosage}in a quantity of #{drug.quantity}"
    puts "Visit #{drug.drug_url} for more information.".colorize(:blue)
    puts "-------------------------------------".colorize(:red)
  end
end
end

end
