class TwentyeightsController < ApplicationController
  before_action :set_twentyeight, only: [:show, :edit, :update, :destroy]

  # GET /twentyeights
  # GET /twentyeights.json
  def index
    @twentyeights = Twentyeight.all
  end

  # GET /twentyeights/1
  # GET /twentyeights/1.json
  def show
  end

  # GET /twentyeights/new
  def new
    @twentyeight = Twentyeight.new
  end

  # GET /twentyeights/1/edit
  def edit
  end

  # POST /twentyeights
  # POST /twentyeights.json
  def create
    @twentyeight = Twentyeight.new(twentyeight_params)

    respond_to do |format|
      if @twentyeight.save
        format.html { redirect_to @twentyeight, notice: 'Twentyeight was successfully created.' }
        format.json { render action: 'show', status: :created, location: @twentyeight }
      else
        format.html { render action: 'new' }
        format.json { render json: @twentyeight.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /twentyeights/1
  # PATCH/PUT /twentyeights/1.json
  def update
    respond_to do |format|
      if @twentyeight.update(twentyeight_params)
        format.html { redirect_to @twentyeight, notice: 'Twentyeight was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @twentyeight.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /twentyeights/1
  # DELETE /twentyeights/1.json
  def destroy
    @twentyeight.destroy
    respond_to do |format|
      format.html { redirect_to twentyeights_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_twentyeight
      @twentyeight = Twentyeight.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def twentyeight_params
      params.require(:twentyeight).permit(:name)
    end
end
