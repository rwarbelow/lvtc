class ClubInvolvementsController < ApplicationController
  before_action :set_club_involvement, only: [:show, :edit, :update, :destroy]

  # GET /club_involvements
  # GET /club_involvements.json
  def index
    @club_involvements = ClubInvolvement.all
  end

  # GET /club_involvements/1
  # GET /club_involvements/1.json
  def show
  end

  # GET /club_involvements/new
  def new
    @club_involvement = ClubInvolvement.new
  end

  # GET /club_involvements/1/edit
  def edit
  end

  # POST /club_involvements
  # POST /club_involvements.json
  def create
    @club_involvement = ClubInvolvement.new(club_involvement_params)

    respond_to do |format|
      if @club_involvement.save
        format.html { redirect_to @club_involvement, notice: 'Club involvement was successfully created.' }
        format.json { render action: 'show', status: :created, location: @club_involvement }
      else
        format.html { render action: 'new' }
        format.json { render json: @club_involvement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /club_involvements/1
  # PATCH/PUT /club_involvements/1.json
  def update
    respond_to do |format|
      if @club_involvement.update(club_involvement_params)
        format.html { redirect_to @club_involvement, notice: 'Club involvement was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @club_involvement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /club_involvements/1
  # DELETE /club_involvements/1.json
  def destroy
    @club_involvement.destroy
    respond_to do |format|
      format.html { redirect_to club_involvements_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_club_involvement
      @club_involvement = ClubInvolvement.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def club_involvement_params
      params[:club_involvement]
    end
end
