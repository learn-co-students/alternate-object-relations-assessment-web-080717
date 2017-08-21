class Article
  attr_accessor :title, :description, :url, :contributor, :time_published

  @@all = []

  def initialize(title, description, url, contributor, time_published)
    @title = title
    @description = description
    @url = url
    @contributor = contributor
    @time_published = time_published
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_all_by_category(category) #category is in adapter
    Adapter.all.select do |adapter|
       adapter.article = self
     end
  end


end
