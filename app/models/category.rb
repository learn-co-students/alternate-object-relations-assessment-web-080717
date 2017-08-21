class Category

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_or_create(category_name)
    self.find(category_name) ? self.find(category_name) : self.create(category_name)
  end

  def self.top_category
    
  end

  ########### HELPER METHODS ##############

 def self.find(category_name)
   self.all.find do |category|
     category.name == category_name
   end
 end

 def self.create(category_name)
   Category.new(category_name)
 end

end
