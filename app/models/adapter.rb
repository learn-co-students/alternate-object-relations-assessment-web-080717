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



    end
 # (title, description, url, contributor, time_published, category)
