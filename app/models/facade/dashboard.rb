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
  end
end
