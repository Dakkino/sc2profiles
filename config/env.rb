require "dm-core"
require 'dm-migrations'
DataMapper.setup(:default, "mysql://#{"root:final33man@" if ENV['RACK_ENV'] == "production"}localhost/sc2profiles_dev")
#DataMapper.setup(:default, "sqlite3://#{Dir.pwd}/db/sc2profiles.sqlite")

# models
path = File.expand_path "../../", __FILE__
require "#{path}/models/profile"
require "#{path}/models/scraper"