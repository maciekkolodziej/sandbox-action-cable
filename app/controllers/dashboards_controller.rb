class DashboardsController < ApplicationController
  def main
    @tasks = Task.all
  end
end
