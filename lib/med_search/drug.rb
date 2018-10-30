class MedSearch::Drug
  attr_accessor :drug_url, :description, :dosage, :quantity, :alternatives, :name

  @@all = []

  def initialize(attributes)
    attributes.each do |attribute, value|
     self.send("#{attribute}=", value)
   end
   @@all << self
  end
end
