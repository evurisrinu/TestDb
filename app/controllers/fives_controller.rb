class FivesController < ApplicationController
  before_action :set_fife, only: [:show, :edit, :update, :destroy]

  # GET /fives
  # GET /fives.json
  def index
    @fives = Five.all
  end

  # GET /fives/1
  # GET /fives/1.json
  def show
  end

  # GET /fives/new
  def new
    @fife = Five.new
  end

  # GET /fives/1/edit
  def edit
  end

  # POST /fives
  # POST /fives.json
  def create
    @fife = Five.new(fife_params)

    respond_to do |format|
      if @fife.save
        format.html { redirect_to @fife, notice: 'Five was successfully created.' }
        format.json { render action: 'show', status: :created, location: @fife }
      else
        format.html { render action: 'new' }
        format.json { render json: @fife.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fives/1
  # PATCH/PUT /fives/1.json
  def update
    respond_to do |format|
      if @fife.update(fife_params)
        format.html { redirect_to @fife, notice: 'Five was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @fife.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fives/1
  # DELETE /fives/1.json
  def destroy
    @fife.destroy
    respond_to do |format|
      format.html { redirect_to fives_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fife
      @fife = Five.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fife_params
      params.require(:fife).permit(:name)
    end
end
