class DashboardController < ApplicationController

  before_filter :layout_vars

  def index
    @pages_sumary = Facade::Dashboard.pages_sumary
    @injections_sumary = Facade::Dashboard.injections_sumary
    @totals_sumary = Facade::Dashboard.totals_sumary
  end
end
