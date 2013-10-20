class ChampionSeriesPointsController < ApplicationController
  before_action :set_champion_series_point, only: [:show, :edit, :update, :destroy]

  # GET /champion_series_points
  # GET /champion_series_points.json
  def index
    @champion_series_points = ChampionSeriesPoint.all
  end

  # GET /champion_series_points/1
  # GET /champion_series_points/1.json
  def show
  end

  # GET /champion_series_points/new
  def new
    @champion_series_point = ChampionSeriesPoint.new
  end

  # GET /champion_series_points/1/edit
  def edit
  end

  # POST /champion_series_points
  # POST /champion_series_points.json
  def create
    @champion_series_point = ChampionSeriesPoint.new(champion_series_point_params)

    respond_to do |format|
      if @champion_series_point.save
        format.html { redirect_to @champion_series_point, notice: 'Champion series point was successfully created.' }
        format.json { render action: 'show', status: :created, location: @champion_series_point }
      else
        format.html { render action: 'new' }
        format.json { render json: @champion_series_point.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /champion_series_points/1
  # PATCH/PUT /champion_series_points/1.json
  def update
    respond_to do |format|
      if @champion_series_point.update(champion_series_point_params)
        format.html { redirect_to @champion_series_point, notice: 'Champion series point was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @champion_series_point.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /champion_series_points/1
  # DELETE /champion_series_points/1.json
  def destroy
    @champion_series_point.destroy
    respond_to do |format|
      format.html { redirect_to champion_series_points_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_champion_series_point
      @champion_series_point = ChampionSeriesPoint.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def champion_series_point_params
      params[:champion_series_point]
    end
end
