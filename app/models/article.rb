class Article

attr_accessor :title, :description, :url, :contributor, :time_published, :category

    ALL = []

    def self.all
      ALL
    end

    def initialize (title, description, url, contributor, time_published, category)
      @title, @description, @url, @contributor, @time_published, @category =  title, description, url, contributor, time_published, category
      self.class.all << self
   end

#    rticle.find_all_by_category(category)
# Takes a category instance as an argument, and returns all articles associated with that category
    def self.find_all_by_category(category)
      Article.all.select do |article|
        article.category == category
        binding.pry
      end
    end





  end
