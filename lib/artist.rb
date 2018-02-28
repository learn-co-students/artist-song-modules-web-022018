require 'pry'
require_relative './memorable.rb'
class Artist
  include Memorable::InstanceMethod
  extend Memorable::ClassMethod

  attr_accessor :name
  attr_reader :songs

  @@all = []


  def initialize
    save
    @songs = []
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end

  def self.all
    @@all
  end


end
