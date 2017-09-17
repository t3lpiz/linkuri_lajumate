require 'anemone'
require 'csv'

Anemone.crawl('http://lajumate.ro') do |anemone|
  anemone.on_pages_like(/[0-9].html/) do |page|
    puts page.url
    rind = [page.url.to_s]
    CSV.open('test.csv', 'a+') do |csv|
      csv << rind
    end
  end
end
