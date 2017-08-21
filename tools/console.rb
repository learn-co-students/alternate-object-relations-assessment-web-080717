require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

#name
opinion = Category.new("Opinion")
editorial = Category.new("Editorial")
news = Category.new("News")
sports = Category.new("Sports")


#title, description, url, contributor, time_published
trump = Article.new("Trump is bad", "Trump desc", "www.nytimes/trump.com", "JP Morgan", "3:45pm")
jeter = Article.new("Jeter is good", "Jeter desc", "www.nytimes/jeter.com", "NY Yankees", "3:00pm")


#file, articles

Pry.start
