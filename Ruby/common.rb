require 'rubygems'
require 'active_record'
require 'pp'
require 'dotenv/load'

ActiveRecord::Base.logger = Logger.new(STDOUT)
# DB接続
ActiveRecord::Base.establish_connection(
        :adapter  => 'mysql2',
        :database => ENV['db_name'],
        :host     => 'localhost',
        :username => ENV['db_user'],
        :password => ENV['db_pass']
)

class Review < ActiveRecord::Base
  belongs_to :resource, :polymorphic => true
end

class Artist < ActiveRecord::Base
  has_many :reviews, :as => :resource
end

class Live < ActiveRecord::Base
  has_many :reviews, :as => :resource
end

class Disc < ActiveRecord::Base
  has_many :reviews, :as => :resource
end
