#!/usr/bin/env ruby

# file: nokorexi.rb

require 'nokogiri'
require 'rexle'
require 'rxfhelper'


class Nokorexi

  attr_reader :to_doc
  
  def initialize(x)
    raw_doc = Nokogiri::HTML(RXFHelper.read(x).first)
    raw_doc.xpath('//script').each(&:remove)
    @to_doc = Rexle.new(raw_doc.xpath('html').to_xml)
  end
  
end