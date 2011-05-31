$:.unshift(File.dirname(__FILE__) + '/../lib')

require 'test/unit'
require 'mongoid-unit'


Mongoid.configure do |config|
  config.master = Mongo::Connection.new.db("mongoid_test")
end


# Required classes for testing
#
class Butter
  include Mongoid::Document
end

class Address
  include Mongoid::Document
  embedded_in :user
end

class Phone
  include Mongoid::Document
  embedded_in :user
end

class Tag
  include Mongoid::Document
  has_and_belongs_to_many :users
end

class Game
  include Mongoid::Document
  belongs_to :user
end

class Post
  include Mongoid::Document
  belongs_to :user
end

class User
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Paranoia
  include Mongoid::Versioning

  field :name
  field :email
  field :admin, type: Boolean

  embeds_one :address
  embeds_many :phones
  has_and_belongs_to_many :tags
  has_one :game
  has_many :posts
end
