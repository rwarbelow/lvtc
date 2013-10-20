class UserInvolvementsController < ApplicationController
  before_action :set_user_involvement, only: [:show, :edit, :update, :destroy]

  # GET /user_involvements
  # GET /user_involvements.json
  def index
    @user_involvements = UserInvolvement.all
  end

  # GET /user_involvements/1
  # GET /user_involvements/1.json
  def show
  end

  # GET /user_involvements/new
  def new
    @user_involvement = UserInvolvement.new
  end

  # GET /user_involvements/1/edit
  def edit
  end

  # POST /user_involvements
  # POST /user_involvements.json
  def create
    @user_involvement = UserInvolvement.new(user_involvement_params)

    respond_to do |format|
      if @user_involvement.save
        format.html { redirect_to @user_involvement, notice: 'User involvement was successfully created.' }
        format.json { render action: 'show', status: :created, location: @user_involvement }
      else
        format.html { render action: 'new' }
        format.json { render json: @user_involvement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_involvements/1
  # PATCH/PUT /user_involvements/1.json
  def update
    respond_to do |format|
      if @user_involvement.update(user_involvement_params)
        format.html { redirect_to @user_involvement, notice: 'User involvement was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @user_involvement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_involvements/1
  # DELETE /user_involvements/1.json
  def destroy
    @user_involvement.destroy
    respond_to do |format|
      format.html { redirect_to user_involvements_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_involvement
      @user_involvement = UserInvolvement.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_involvement_params
      params[:user_involvement]
    end
end
