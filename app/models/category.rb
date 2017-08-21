class Category

attr_accessor :name
ALL = []

def self.all
  ALL
end

def initialize (name)
  @name = name
  self.class.all << self
end

def self.find_by_name(name)
  Category.all.find do |cat|
    cat.name == name
  end
end

def self.create_by_name(name)
  Category.new(name)
end

def self.find_or_create_by_name(name)
  self.find_by_name(name) || self.create_by_name(name)
end
#
# Category.top_category
#all the articles for this category
    def articles
      Article.all.select do |art|
        art.category == self
      end
    end

    def self.top_category
      Category.all.max_by do |cat|
        cat.articles.count
      end
    end

end
