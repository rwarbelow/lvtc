class GrandPrixPointsController < ApplicationController
  before_action :set_grand_prix_point, only: [:show, :edit, :update, :destroy]

  # GET /grand_prix_points
  # GET /grand_prix_points.json
  def index
    @grand_prix_points = GrandPrixPoint.all
  end

  # GET /grand_prix_points/1
  # GET /grand_prix_points/1.json
  def show
  end

  # GET /grand_prix_points/new
  def new
    @grand_prix_point = GrandPrixPoint.new
  end

  # GET /grand_prix_points/1/edit
  def edit
  end

  # POST /grand_prix_points
  # POST /grand_prix_points.json
  def create
    @grand_prix_point = GrandPrixPoint.new(grand_prix_point_params)

    respond_to do |format|
      if @grand_prix_point.save
        format.html { redirect_to @grand_prix_point, notice: 'Grand prix point was successfully created.' }
        format.json { render action: 'show', status: :created, location: @grand_prix_point }
      else
        format.html { render action: 'new' }
        format.json { render json: @grand_prix_point.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /grand_prix_points/1
  # PATCH/PUT /grand_prix_points/1.json
  def update
    respond_to do |format|
      if @grand_prix_point.update(grand_prix_point_params)
        format.html { redirect_to @grand_prix_point, notice: 'Grand prix point was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @grand_prix_point.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /grand_prix_points/1
  # DELETE /grand_prix_points/1.json
  def destroy
    @grand_prix_point.destroy
    respond_to do |format|
      format.html { redirect_to grand_prix_points_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_grand_prix_point
      @grand_prix_point = GrandPrixPoint.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def grand_prix_point_params
      params[:grand_prix_point]
    end
end
