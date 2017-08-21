require 'pry'
require 'json'

# In terminal, you should be able to call Adapter.new('newyorker.json').create_objects_from_file and get the created Article objects as a return value

class Adapter
  attr_accessor :file, :articles

  ALL = []

  def initialize(file)
    @file = file
    @articles = self.class.articles(file)
    self.class.all << self
  end

  def self.articles(file)
    JSON.parse(File.read(file))
  end

  def self.all
    ALL
  end


  def create_objects_from_file
    # create article and category objects here
        Adapter.new('newyorker.json').articles.collect do |data_hash|
 Category.new(data_hash["category"])

       Article.new(data_hash["title"], data_hash["description"], data_hash["url"], data_hash["contributor"], data_hash["publishedAt"],data_hash["contributor"])
          end
      end

    end
 # (title, description, url, contributor, time_published, category)
