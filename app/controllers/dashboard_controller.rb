class DashboardController < ApplicationController
  def index
    @pages_sumary = Facade::Dashboard.pages_sumary
  end
end
