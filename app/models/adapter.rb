require 'pry'
require 'json'

# In terminal, you should be able to call Adapter.new('newyorker.json').create_objects_from_file and get the created Article objects as a return value

class Adapter
  attr_accessor :file, :articles

  def initialize(file)
    @file = file
    @articles = self.class.articles(file)
  end

  def self.articles(file)
    JSON.parse(File.read(file))
  end


  def create_objects_from_file
    # create article and category objects here
    data_hash = JSON.parse(File.read(file))
    data_hash[0].each do |obj|
       puts "*" * 20
        puts data_hash[0]["title"]
        puts data_hash[0]["contributor"]
        puts data_hash[0]["url"]
        puts data_hash[0]["category"]
        puts data_hash[0]["description"]
        puts  data_hash[0]["time_published"]
      end

end




end
