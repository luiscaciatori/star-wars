class PlanetsController < ApplicationController
  before_action :set_planet, only: %i[ show update destroy ]
  before_action :authorize_request

  # GET /planets
  # GET /planets.json
  def index
    @planets = Planet.all
  end

  # GET /planets/1
  # GET /planets/1.json
  def show
  end

  # POST /planets
  # POST /planets.json
  def create
    @planet = Planet.new(planet_params)

    if @planet.save
      render :show, status: :created, location: @planet
    else
      render json: @planet.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /planets/1
  # PATCH/PUT /planets/1.json
  def update
    if @planet.update(planet_params)
      render :show, status: :ok, location: @planet
    else
      render json: @planet.errors, status: :unprocessable_entity
    end
  end

  # DELETE /planets/1
  # DELETE /planets/1.json
  def destroy
    @planet.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_planet
      @planet = Planet.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def planet_params
      params.require(:planet).permit(:name, :diameter, :rotation_period, :orbital_period, :gravity, :population, :climate, :terrain, :surface_water)
    end
end
