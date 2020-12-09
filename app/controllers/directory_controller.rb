class DirectoryController < ApplicationController
  before_action :set_account, only: [:show]

  # GET /directory
  def index
    @accounts = Account.all
  end

  # GET /directory/1
  def show
  end
  
  private
    def set_account
      @account = Account.find(params[:id])
    end
end
