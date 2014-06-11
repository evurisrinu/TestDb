class ThirtyninesController < ApplicationController
  before_action :set_thirtynine, only: [:show, :edit, :update, :destroy]

  # GET /thirtynines
  # GET /thirtynines.json
  def index
    @thirtynines = Thirtynine.all
  end

  # GET /thirtynines/1
  # GET /thirtynines/1.json
  def show
  end

  # GET /thirtynines/new
  def new
    @thirtynine = Thirtynine.new
  end

  # GET /thirtynines/1/edit
  def edit
  end

  # POST /thirtynines
  # POST /thirtynines.json
  def create
    @thirtynine = Thirtynine.new(thirtynine_params)

    respond_to do |format|
      if @thirtynine.save
        format.html { redirect_to @thirtynine, notice: 'Thirtynine was successfully created.' }
        format.json { render action: 'show', status: :created, location: @thirtynine }
      else
        format.html { render action: 'new' }
        format.json { render json: @thirtynine.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /thirtynines/1
  # PATCH/PUT /thirtynines/1.json
  def update
    respond_to do |format|
      if @thirtynine.update(thirtynine_params)
        format.html { redirect_to @thirtynine, notice: 'Thirtynine was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @thirtynine.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /thirtynines/1
  # DELETE /thirtynines/1.json
  def destroy
    @thirtynine.destroy
    respond_to do |format|
      format.html { redirect_to thirtynines_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_thirtynine
      @thirtynine = Thirtynine.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def thirtynine_params
      params.require(:thirtynine).permit(:name)
    end
end
