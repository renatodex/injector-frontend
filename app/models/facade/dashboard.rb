module Facade
  class Dashboard
    def self.pages_sumary
      raw_response = Facade::Backend.api_get "/dashboards/sumary/pages"
      build_page_sumary(raw_response)
    end

    def self.build_page_sumary(raw_response)
      raw_response.inject([]) do |arr, page_json|
        page = Page.new(page_json)
        arr << page
        arr
      end
    end

    def self.injections_sumary
      raw_response = Facade::Backend.api_get "/dashboards/sumary/injections"
      build_injections_sumary(raw_response)
    end

    def self.build_injections_sumary(raw_response)
      raw_response.inject([]) do |arr, page_json|
        injection = Injection.new(page_json)
        arr << injection
        arr
      end
    end

    def self.totals_sumary
      raw_response = Facade::Backend.api_get "/dashboards/sumary/totals"
      ::Dashboard::Totals.new(raw_response)
    end
  end
end
