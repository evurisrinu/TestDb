class FourtiesController < ApplicationController
  before_action :set_fourty, only: [:show, :edit, :update, :destroy]

  # GET /fourties
  # GET /fourties.json
  def index
    @fourties = Fourty.all
  end

  # GET /fourties/1
  # GET /fourties/1.json
  def show
  end

  # GET /fourties/new
  def new
    @fourty = Fourty.new
  end

  # GET /fourties/1/edit
  def edit
  end

  # POST /fourties
  # POST /fourties.json
  def create
    @fourty = Fourty.new(fourty_params)

    respond_to do |format|
      if @fourty.save
        format.html { redirect_to @fourty, notice: 'Fourty was successfully created.' }
        format.json { render action: 'show', status: :created, location: @fourty }
      else
        format.html { render action: 'new' }
        format.json { render json: @fourty.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fourties/1
  # PATCH/PUT /fourties/1.json
  def update
    respond_to do |format|
      if @fourty.update(fourty_params)
        format.html { redirect_to @fourty, notice: 'Fourty was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @fourty.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fourties/1
  # DELETE /fourties/1.json
  def destroy
    @fourty.destroy
    respond_to do |format|
      format.html { redirect_to fourties_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fourty
      @fourty = Fourty.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fourty_params
      params.require(:fourty).permit(:name)
    end
end
