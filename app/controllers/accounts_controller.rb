class AccountsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_account, only: [:show, :edit, :update, :destroy]
  before_action :validate_user, only: [:show, :edit, :update, :destroy]

  # GET /accounts
  # GET /accounts.json
  def index
    @accounts = Account.all
  end

  # GET /accounts/1
  # GET /accounts/1.json
  def show
  end

  # GET /accounts/new
  def new
    # @account = Account.new
    @account = current_user.build_account
  end

  # GET /accounts/1/edit
  def edit
  end

  # POST /accounts
  # POST /accounts.json
  def create
    # @account = Account.new(account_params)
    @account = current_user.build_account(account_params)

    respond_to do |format|
      if @account.save
        format.html { redirect_to dashboard_path, notice: 'Account was successfully created.' }
        format.json { render :show, status: :created, location: @account }
      else
        format.html { render :new }
        format.json { render json: @account.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /accounts/1
  # PATCH/PUT /accounts/1.json
  def update
    respond_to do |format|
      if @account.update(account_params)
        format.html { redirect_to @account, notice: 'Account was successfully updated.' }
        format.json { render :show, status: :ok, location: @account }
      else
        format.html { render :edit }
        format.json { render json: @account.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /accounts/1
  # DELETE /accounts/1.json
  def destroy
    @account.destroy
    respond_to do |format|
      format.html { redirect_to accounts_url, notice: 'Account was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_account
      # @account = Account.find(params[:id])
      @account = current_user.account
    end

    # Only allow a list of trusted parameters through.
    def account_params
      params.require(:account).permit(:name, :active, :business_type, :category, :provider_name, :address1, :address2, :city, :state, :zip, :phone, :url, :email, :description, :conditions, :contact_name, :contact_number, :contact_email, :contact_title)
      # params.require(:account).permit(:name, :active, :business_type)
    end

    def validate_user
      if current_user != Account.find(params[:id]).user
        redirect_to root_path
      end
    end
end
