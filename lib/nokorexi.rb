#!/usr/bin/env ruby

# file: nokorexi.rb

require 'nokogiri'
require 'rexml/document'

class Nokorexi
  include REXML

  def initialize(buffer)
    raw_doc = Nokogiri::HTML(buffer)
    @doc = Document.new(raw_doc.xpath('html/body').to_xml)
  end

  def to_doc
    @doc
  end
end
