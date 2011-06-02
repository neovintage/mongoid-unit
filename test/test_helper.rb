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
  field :login_number, type: Integer
  field :admin, type: Boolean
  field :employers, type: Array
  field :title, type: String
  field :former_employers, type: Array
  field :password
  field :terms, type: Boolean

  embeds_one :address
  embeds_many :phones
  has_and_belongs_to_many :tags
  has_one :game
  has_many :posts

  validates_presence_of :name
  validates_uniqueness_of :name
  validates_length_of :name, within: 8..10
  validates_numericality_of :login_number
  validates_inclusion_of :employers, in: ["Startup"]
  validates_format_of :title, with: /[A-Za-z]/
  validates_exclusion_of :former_employers, in: ["Big Evil Company"]
  validates_confirmation_of :password
  validates_associated :posts
  validates_acceptance_of :terms
end
