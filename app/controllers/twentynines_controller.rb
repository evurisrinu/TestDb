class TwentyninesController < ApplicationController
  before_action :set_twentynine, only: [:show, :edit, :update, :destroy]

  # GET /twentynines
  # GET /twentynines.json
  def index
    @twentynines = Twentynine.all
  end

  # GET /twentynines/1
  # GET /twentynines/1.json
  def show
  end

  # GET /twentynines/new
  def new
    @twentynine = Twentynine.new
  end

  # GET /twentynines/1/edit
  def edit
  end

  # POST /twentynines
  # POST /twentynines.json
  def create
    @twentynine = Twentynine.new(twentynine_params)

    respond_to do |format|
      if @twentynine.save
        format.html { redirect_to @twentynine, notice: 'Twentynine was successfully created.' }
        format.json { render action: 'show', status: :created, location: @twentynine }
      else
        format.html { render action: 'new' }
        format.json { render json: @twentynine.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /twentynines/1
  # PATCH/PUT /twentynines/1.json
  def update
    respond_to do |format|
      if @twentynine.update(twentynine_params)
        format.html { redirect_to @twentynine, notice: 'Twentynine was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @twentynine.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /twentynines/1
  # DELETE /twentynines/1.json
  def destroy
    @twentynine.destroy
    respond_to do |format|
      format.html { redirect_to twentynines_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_twentynine
      @twentynine = Twentynine.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def twentynine_params
      params.require(:twentynine).permit(:name)
    end
end
