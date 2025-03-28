require 'pry'
require_relative './concerns/memorable.rb'


class Artist
  attr_accessor :name
  attr_reader :songs

  @@artists = []

  extend Memorable
  include Paramable


  extend Memorable::ClassMethods
  include Memorable::InstanceMethods
  extend Findable::ClassMethods


  def initialize
    super
    @songs = []
  end

  # def self.find_by_name(name)
  #   @@artists.detect{|a| a.name == name}
  # end

  def self.all
    @@artists
  end

  # def self.reset_all
  #   self.all.clear
  # end

  # def self.count
  #   self.all.count
  # end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end

  # def to_param
  #   name.downcase.gsub(' ', '-')
  # end
end
