path = File.expand_path "../", __FILE__

require "#{path}/config/env"

RANKS = ["diamond", "platinum", "gold", "silver", "bronze", "copper"]

def rank(i)
  return nil if i.nil?
  RANKS[i-1]
end

get '/' do
  haml :index
end

get '/scrape' do
  Scraper.scrape
  "scraped successfully!"
end

get '/migrate' do
  DataMapper.auto_migrate!
  "migrated successfully!"
end