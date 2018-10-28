class MedSearch::Drug
  attr_accessor :drug_url, :description, :dosage, :quantity

  @@all = []

  def initialize(attributes)
    attributes.each do |attribute, value|
     self.send("#{attribute}=", value)
   end
   @@all << self
  end
end
