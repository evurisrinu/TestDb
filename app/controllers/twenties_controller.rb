class TwentiesController < ApplicationController
  before_action :set_twenty, only: [:show, :edit, :update, :destroy]

  # GET /twenties
  # GET /twenties.json
  def index
    @twenties = Twenty.all
  end

  # GET /twenties/1
  # GET /twenties/1.json
  def show
  end

  # GET /twenties/new
  def new
    @twenty = Twenty.new
  end

  # GET /twenties/1/edit
  def edit
  end

  # POST /twenties
  # POST /twenties.json
  def create
    @twenty = Twenty.new(twenty_params)

    respond_to do |format|
      if @twenty.save
        format.html { redirect_to @twenty, notice: 'Twenty was successfully created.' }
        format.json { render action: 'show', status: :created, location: @twenty }
      else
        format.html { render action: 'new' }
        format.json { render json: @twenty.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /twenties/1
  # PATCH/PUT /twenties/1.json
  def update
    respond_to do |format|
      if @twenty.update(twenty_params)
        format.html { redirect_to @twenty, notice: 'Twenty was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @twenty.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /twenties/1
  # DELETE /twenties/1.json
  def destroy
    @twenty.destroy
    respond_to do |format|
      format.html { redirect_to twenties_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_twenty
      @twenty = Twenty.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def twenty_params
      params.require(:twenty).permit(:name)
    end
end
