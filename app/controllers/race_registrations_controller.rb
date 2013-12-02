class RaceRegistrationsController < ApplicationController
  before_action :set_race_registration, only: [:show, :edit, :update, :destroy]

  # GET /race_registrations
  # GET /race_registrations.json
  def index
    @race_registrations = RaceRegistration.all
  end

  # GET /race_registrations/1
  # GET /race_registrations/1.json
  def show
  end

  # GET /race_registrations/new
  def new
    @race_registration = RaceRegistration.new
    @event = Event.find(params[:event_id])
  end

  # GET /race_registrations/1/edit
  def edit
  end

  # POST /race_registrations
  # POST /race_registrations.json
  def create
    event = Event.find(params[:event_id])
    token = params[:stripeToken]
    firstname = params[:firstname]
    lastname = params[:lastname]
    email = params[:email]
    begin
      charge = Stripe::Charge.create(
        amount:      event.stripe_price,
        currency:    "usd",
        card:        token,
        description: "#{params[:firstname]} #{params[:lastname]},
                      #{event.title},
                      #{params[:email]}"
      )
      @registration = event.race_registrations.create!(
        event_id:   event.id,
        email:      params[:email]
        # fix
      )
      UserMailer.registration_confirmation(firstname, lastname, email, event).deliver
      redirect_to root_path
    rescue Stripe::CardError => e
      @error = e
      render :new
    end 
  end

  def update
    respond_to do |format|
      if @race_registration.update(race_registration_params)
        format.html { redirect_to @race_registration, notice: 'Race registration was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @race_registration.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /race_registrations/1
  # DELETE /race_registrations/1.json
  def destroy
    @race_registration.destroy
    respond_to do |format|
      format.html { redirect_to race_registrations_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_race_registration
      @race_registration = RaceRegistration.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def race_registration_params
      params.require(:race_registration).permit(
      :event_id, :card_number, :card_code, :card_year, :card_month)
    end
end
