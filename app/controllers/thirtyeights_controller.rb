class ThirtyeightsController < ApplicationController
  before_action :set_thirtyeight, only: [:show, :edit, :update, :destroy]

  # GET /thirtyeights
  # GET /thirtyeights.json
  def index
    @thirtyeights = Thirtyeight.all
  end

  # GET /thirtyeights/1
  # GET /thirtyeights/1.json
  def show
  end

  # GET /thirtyeights/new
  def new
    @thirtyeight = Thirtyeight.new
  end

  # GET /thirtyeights/1/edit
  def edit
  end

  # POST /thirtyeights
  # POST /thirtyeights.json
  def create
    @thirtyeight = Thirtyeight.new(thirtyeight_params)

    respond_to do |format|
      if @thirtyeight.save
        format.html { redirect_to @thirtyeight, notice: 'Thirtyeight was successfully created.' }
        format.json { render action: 'show', status: :created, location: @thirtyeight }
      else
        format.html { render action: 'new' }
        format.json { render json: @thirtyeight.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /thirtyeights/1
  # PATCH/PUT /thirtyeights/1.json
  def update
    respond_to do |format|
      if @thirtyeight.update(thirtyeight_params)
        format.html { redirect_to @thirtyeight, notice: 'Thirtyeight was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @thirtyeight.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /thirtyeights/1
  # DELETE /thirtyeights/1.json
  def destroy
    @thirtyeight.destroy
    respond_to do |format|
      format.html { redirect_to thirtyeights_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_thirtyeight
      @thirtyeight = Thirtyeight.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def thirtyeight_params
      params.require(:thirtyeight).permit(:name)
    end
end
