require 'rest-client'
require 'pry'

class DataFetcher
  def fetch
    state = "RI"
    api_key = "ADD_YOUR_API_KEY"

    url = "https://opendata.fcc.gov/resource/b5f4-szwq.json?stateabbr=#{state}&consumer=1&$where=techcode != 60"
    data = { params: {"$limit" => 100000, "$$app_token" => "#{api_key}"}}
    response = RestClient.get(url, data)
    results = JSON.parse(response.body)

    block_providers = results.map do |result|
      BlockProvider.new(result.symbolize_keys)
    end

    BlockProvider.import block_providers
  end
end
