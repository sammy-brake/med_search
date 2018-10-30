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
    puts "------------------------------------------"
    puts "    Previously Researched Medications"
    @@all.each.with_index(1) do |drug, index|
      puts "#{index}. #{drug.drug_name.capitalize}"
    end
  end

  def self.find_by_drug_name(drug_name)
    @@all.find {|drug| drug.drug_name == drug_name}
  end

  def self.find_or_instantiate(drug_name)
    self.find_by_drug_name || MedSearch::Scraper

end
