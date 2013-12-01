class UserMembershipsController < ApplicationController
  before_action :set_user_membership, only: [:show, :edit, :update, :destroy]

  # GET /user_memberships
  # GET /user_memberships.json
  def index
    @user_memberships = UserMembership.all
  end

  # GET /user_memberships/1
  # GET /user_memberships/1.json
  def show
  end

  def type
  end

  def info
    @type = params[:membership_type]
  end

  # GET /user_memberships/new
  def new
    @user_membership = UserMembership.new
  end

  # GET /user_memberships/1/edit
  def edit
  end

  # POST /user_memberships
  # POST /user_memberships.json
  def create
    @user_membership = UserMembership.new(user_membership_params)
    token = params[:stripeToken]
    @type = Membership.find_by_kind(params[:membership_type])
    @price = @type.stripe_price
    @people = params[:firstname].zip(params[:lastname])
    begin
      charge = Stripe::Charge.create(
        amount:      @type.stripe_price,
        currency:    "usd",
        card:        token,
        description: "#{@people},
                      #{@type}"
      )
      # UserMailer.membership_confirmation(users).deliver
      redirect_to root_path
    rescue Stripe::CardError => e
      @error = e
      render :new
    end 
  end

  # PATCH/PUT /user_memberships/1
  # PATCH/PUT /user_memberships/1.json
  def update
    respond_to do |format|
      if @user_membership.update(user_membership_params)
        format.html { redirect_to @user_membership, notice: 'User membership was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @user_membership.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_memberships/1
  # DELETE /user_memberships/1.json
  def destroy
    @user_membership.destroy
    respond_to do |format|
      format.html { redirect_to user_memberships_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_membership
      @user_membership = UserMembership.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_membership_params
      params[:user_membership]
    end
end
