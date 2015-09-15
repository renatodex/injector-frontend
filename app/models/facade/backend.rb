module Facade
  module Backend
    include HTTParty
    base_uri Rails.configuration.injector_backend_uri
    default_params :token => Rails.configuration.injector_backend_token

    def self.version
      "v1"
    end

    def self.api_get(path, params={})
      Rails.logger.info "[GET] starting request to backend at '#{path}' with params: #{params}".light_blue
      result = self.get("/#{self.version}/#{path}", params)
      Rails.logger.info "[GET] request response from backend: #{result}".green
      result
    end
  end
end
