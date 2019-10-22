#!/usr/bin/env ruby

# file: nokorexi.rb

require 'nokogiri'
require 'rexle'
require 'rxfhelper'


class Nokorexi

  attr_reader :to_doc

  def initialize(x, debug: false)
    s = RXFHelper.read(x).first[/.*<\/html>$/m]
    raw_doc = Nokogiri::HTML(s.gsub("&nbsp;",' '))
    raw_doc.xpath('//script').each(&:remove)
    @to_doc = Rexle.new(raw_doc.xpath('html').to_xml, debug: debug)
  end
  
end
