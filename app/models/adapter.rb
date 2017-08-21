require 'pry'
require 'json'

# In terminal, you should be able to call Adapter.new('newyorker.json').create_objects_from_file and get the created Article objects as a return value

class Adapter
  attr_accessor :file, :articles

  @@all = []

  def initialize(file)
    @file = file
    @articles = self.class.articles(file)
    @@all << self
  end

  def self.all
    @@all
  end

  def self.articles(file)
    JSON.parse(File.read(file))
  end

  #Adapter.new('newyorker.json') #=> an array of all the article info (each article is separated by hash)
  #each element in array is hash [{}, {}, {}]
  #Adapter.new('newyorker.json').articles #=> gives all the articles
  #Adapter.new('newyorker.json').articles[0] #=> gives first article hash
  #How to get to keys??

  def create_objects_from_file
    #This method should use the provided articles data to create Article and Category objects. It should return the created instances.
    Adapter.new('newyorker.json').articles.collect do |article_hash|
      Category.new(article_hash["category"])
      Article.new(article_hash["title"], article_hash["description"], article_hash["url"], article_hash["contributor"], article_hash["publishedAt"])
    end
  end

end
