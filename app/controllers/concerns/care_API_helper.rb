module CareApiHelper
  extend ActiveSupport::Concern
  require 'net/http'

  included do
    def care_api_events_request
      care_api_request_handler('events')
    end
  end

  private

  def care_api_request_handler(subd)
    url = URI.parse("https://api.getgalore-staging.com/v1/#{subd}")
    http = Net::HTTP.new(url.host, url.port)
    http.use_ssl = true
    req = Net::HTTP::Get.new(url.request_uri)

    req['content-type'] = 'application/json'
    req['Api-Version'] = '1.25'
    req['Api-Key'] = ENV['care_api_key']
    http.request(req)
  end
end
