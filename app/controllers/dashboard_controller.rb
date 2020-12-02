class DashboardController < ApplicationController
  before_action :authenticate_user!
  before_action :set_account

  def show
    @account = current_user.account
    @articles = current_user.articles
  end

  def set_account
    @account = current_user.account
    @articles = current_user.articles
  end

end
