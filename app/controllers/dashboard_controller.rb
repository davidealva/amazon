class DashboardController < ApplicationController
  before_action :authenticate_user!
  before_action :set_account

  def index
    @account = current_user.account
    @articles = current_user.articles
    @events = current_user.events
  end

  private
    def set_account
      @account = current_user.account
      @articles = current_user.articles
    end
end