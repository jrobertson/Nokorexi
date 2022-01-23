#!/usr/bin/env ruby

# file: nokorexi.rb

require 'nokogiri'
require 'rexle'
require 'rxfhelper'


class Nokorexi

  attr_reader :to_doc, :to_s

  def initialize(x, noscript: true, debug: false)

    raws = RXFHelper.read(x).first
    s = raws[/.*<\/html>$/m] || raws
    puts 's: ' + s.inspect if debug

    raw_doc = Nokogiri::HTML(s.gsub("&nbsp;",' '))
    raw_doc.xpath('//script').each(&:remove) if noscript
    yield(raw_doc) if block_given?

    @to_s = xml = raw_doc.xpath('html').to_xml
    @to_doc = Rexle.new(xml, debug: debug)

  end

end
