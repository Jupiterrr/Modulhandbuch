# encoding: utf-8
require "rubygems"
require "pry"

class Archievment < Struct.new(:compulsory, :type, :desc)
end

require "./lib/modhb/item"

class ModHB

  attr_reader :items

  def initialize()
    @items = []
  end

  def <<(item)
    @items << item
  end

  def compulsory
    items.select {|i| i.type == :compulsory }
  end

  def not_compulsory
    items.select {|i| i.type != :compulsory }
  end

  MAPPING = {
    stammmodul: "Stammmodule",
    compulsory: "Pflichtmodule"
  }

  def groups
    groups = items.group_by(&:type)
    #groups = groups.except(:compulsory)
    groups = Hash[groups.map {|k, v| [MAPPING[k], v] }]
    groups
  end
  

end
