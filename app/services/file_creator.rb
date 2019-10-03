require 'json'

class FileCreator
  def create
    results = BlockProvider.group(:blockcode).pluck("blockcode, AVG(maxaddown) as avg_maxaddown").map { |blockcode, avg_maxaddown| {blockcode: blockcode, avg_maxaddown: avg_maxaddown }}

    data = {}

    results.each do |result|
      data[result[:blockcode]] = result[:avg_maxaddown]
    end

    File.open('data/data.json', 'w') do |f|
      f.write(JSON.pretty_generate(data))
    end
  end
end
