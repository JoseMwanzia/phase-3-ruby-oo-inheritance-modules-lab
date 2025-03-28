require 'pry'
require_relative './concerns/memorable.rb'

class Song
  attr_accessor :name
  attr_reader :artist

  @@songs = []

  extend Memorable
  include Paramable


  extend Memorable::ClassMethods
  include Memorable::InstanceMethods
  extend Findable::ClassMethods


  # def initialize
  #   @@songs << self
  # end

  # def self.find_by_name(name)
  #   @@songs.detect{|a| a.name == name}
  # end

  def self.all
    @@songs
  end

  # def self.reset_all
  #   self.all.clear
  # end

  # def self.count
  #   self.all.count
  # end

  def artist=(artist)
    @artist = artist
  end

  # def to_param
  #   name.downcase.gsub(' ', '-')
  # end
end
