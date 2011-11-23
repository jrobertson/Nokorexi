#!/usr/bin/env ruby

# file: nokorexi.rb

require 'nokogiri'
require 'open-uri'
require 'rexle'
require 'rxfhelper'

class Nokorexi

  attr_reader :to_doc
  
  def initialize(x)
    buffer = RXFHelper.new(x).to_s
    raw_doc = Nokogiri::HTML(buffer)
    @to_doc = Rexle.new(raw_doc.xpath('html/body').to_xml)
  end
  
end
