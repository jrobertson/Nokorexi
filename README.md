Introducing the Nokorexi gem

The Nokorexi gem uses the Nokogiri gem + Rexle gem to parse HTML documents.

## Example

    require 'nokorexi'

    url = 'http://scottishrubyconference.com/'
    buffer = open(url, 'UserAgent' => 'Nokorexi').read
    doc = Nokorexi.new(buffer).to_doc

    a = doc.xpath('//a/@href').take(5)
    #=> ["/", "/tickets/", "/schedule/", "/news/", "http://2013.scottishrubyconference.com"]

nokorexi gem
