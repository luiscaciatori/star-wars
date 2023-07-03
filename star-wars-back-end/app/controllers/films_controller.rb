class FilmsController < ApplicationController
  before_action :set_film, only: %i[ show update destroy ]
  before_action :authorize_request

  # GET /films
  # GET /films.json
  def index
    @films = Film.all
  end

  # GET /films/1
  # GET /films/1.json
  def show
  end

  # POST /films
  # POST /films.json
  def create
    @film = Film.new(film_params)

    if @film.save
      render :show, status: :created, location: @film
    else
      render json: @film.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /films/1
  # PATCH/PUT /films/1.json
  def update
    if @film.update(film_params)
      render :show, status: :ok, location: @film
    else
      render json: @film.errors, status: :unprocessable_entity
    end
  end

  # DELETE /films/1
  # DELETE /films/1.json
  def destroy
    @film.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_film
      @film = Film.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def film_params
      params.require(:film).permit(:title, :episode_id, :opening_crawl, :director, :producer, :release_date)
    end
end
