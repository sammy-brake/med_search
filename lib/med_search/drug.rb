class MedSearch::Drug
  attr_accessor :drug_url, :description, :dosage, :quantity, :drugs_list, :drug_name

  @@all = []

  def initialize(attributes)
    attributes.each do |attribute, value|
     self.send("#{attribute}=", value)
   end
   @@all << self
  end

  def previous_drug?

  end

  def drugs_researched
    @@all.each do |drug|
      drug.name
    end
  end
end
