#!/usr/bin/env ruby

# file: nokorexi.rb

require 'nokogiri'
require 'open-uri'
require 'rexle'
require 'rxfhelper'

class Nokorexi

  attr_reader :to_doc
  
  def initialize(x)
    raw_doc = Nokogiri::HTML(RXFHelper.read(x))
    @to_doc = Rexle.new(raw_doc.xpath('html/body').to_xml)
  end
  
end
