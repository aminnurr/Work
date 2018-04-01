require"nokogiri"
require"open-uri"
urls=["https://rss.hiiraan.com/rss.xml","https://www.voasomali.com/api/zoju_eg_ky","https://www.voasomali.com/api/zggute__kr","http://feeds.bbci.co.uk/somali/rss.xml"]
urls.each do |url|
doc = open(url).read
page = Nokogiri::XML(doc)
elements =page.xpath("//item")
puts elements
