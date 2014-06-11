class TwentyfoursController < ApplicationController
  before_action :set_twentyfour, only: [:show, :edit, :update, :destroy]

  # GET /twentyfours
  # GET /twentyfours.json
  def index
    @twentyfours = Twentyfour.all
  end

  # GET /twentyfours/1
  # GET /twentyfours/1.json
  def show
  end

  # GET /twentyfours/new
  def new
    @twentyfour = Twentyfour.new
  end

  # GET /twentyfours/1/edit
  def edit
  end

  # POST /twentyfours
  # POST /twentyfours.json
  def create
    @twentyfour = Twentyfour.new(twentyfour_params)

    respond_to do |format|
      if @twentyfour.save
        format.html { redirect_to @twentyfour, notice: 'Twentyfour was successfully created.' }
        format.json { render action: 'show', status: :created, location: @twentyfour }
      else
        format.html { render action: 'new' }
        format.json { render json: @twentyfour.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /twentyfours/1
  # PATCH/PUT /twentyfours/1.json
  def update
    respond_to do |format|
      if @twentyfour.update(twentyfour_params)
        format.html { redirect_to @twentyfour, notice: 'Twentyfour was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @twentyfour.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /twentyfours/1
  # DELETE /twentyfours/1.json
  def destroy
    @twentyfour.destroy
    respond_to do |format|
      format.html { redirect_to twentyfours_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_twentyfour
      @twentyfour = Twentyfour.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def twentyfour_params
      params.require(:twentyfour).permit(:name)
    end
end
