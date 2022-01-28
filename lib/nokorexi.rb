#!/usr/bin/env ruby

# file: nokorexi.rb

require 'nokogiri'
require 'rexle'
require 'rxfhelper'


class Nokorexi

  attr_reader :to_doc, :to_doc2, :to_s

  def initialize(x, noscript: true, noevents: true, nosvg: true,
                 nostyle: true, nolink: true, filter: false, debug: false)

    raws = RXFHelper.read(x).first
    s = raws[/.*<\/html>$/m] || raws
    puts 's: ' + s.inspect if debug

    @to_doc2 = raw_doc = Nokogiri::HTML(s.gsub("&nbsp;",' '))

    if filter then

      raw_doc.xpath('//style').each(&:remove) if nostyle
      raw_doc.xpath('//link').each(&:remove) if nolink
      raw_doc.xpath('//script').each(&:remove) if noscript
      raw_doc.xpath('//svg').each(&:remove) if nosvg

      if noevents then

          raw_doc.xpath('//*[@onclick]').each do |e|
            e.attributes['onclick'].value = ''
          end

          raw_doc.xpath('//*[@onmousedown]').each do |e|
            e.attributes['onmousedown'].value = ''
          end
      end

    end

    yield(raw_doc) if block_given?

    @to_s = xml = raw_doc.xpath('html').to_xml
    @to_doc = Rexle.new(xml, debug: debug)

  end

end
