require 'pry'
require_relative './memorable.rb'

class Song
  include Memorable::InstanceMethod
  extend Memorable::ClassMethod

  attr_accessor :name
  attr_reader :artist

  @@all = []

  def initialize
    save
  end

  def artist=(artist)
    @artist = artist
  end

  def self.all
    @@all
  end

end
