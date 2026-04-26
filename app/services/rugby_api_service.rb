require "uri"
require "net/http"
require "json"

class RugbyApiService
  def self.teams(country = "South-Africa")
    url = URI("https://v1.rugby.api-sports.io/teams?country=South-Africa")

    http = Net::HTTP.new(url.host, url.port)
    http.use_ssl = true

    request = Net::HTTP::Get.new(url)
    request["x-apisports-key"] = ENV["RUGBY_API_KEY"]

    response = http.request(request)

    data = JSON.parse(response.body)

    data["response"].map { |team| team["name"] }
  end
end