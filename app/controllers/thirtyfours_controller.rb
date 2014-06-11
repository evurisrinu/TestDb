class ThirtyfoursController < ApplicationController
  before_action :set_thirtyfour, only: [:show, :edit, :update, :destroy]

  # GET /thirtyfours
  # GET /thirtyfours.json
  def index
    @thirtyfours = Thirtyfour.all
  end

  # GET /thirtyfours/1
  # GET /thirtyfours/1.json
  def show
  end

  # GET /thirtyfours/new
  def new
    @thirtyfour = Thirtyfour.new
  end

  # GET /thirtyfours/1/edit
  def edit
  end

  # POST /thirtyfours
  # POST /thirtyfours.json
  def create
    @thirtyfour = Thirtyfour.new(thirtyfour_params)

    respond_to do |format|
      if @thirtyfour.save
        format.html { redirect_to @thirtyfour, notice: 'Thirtyfour was successfully created.' }
        format.json { render action: 'show', status: :created, location: @thirtyfour }
      else
        format.html { render action: 'new' }
        format.json { render json: @thirtyfour.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /thirtyfours/1
  # PATCH/PUT /thirtyfours/1.json
  def update
    respond_to do |format|
      if @thirtyfour.update(thirtyfour_params)
        format.html { redirect_to @thirtyfour, notice: 'Thirtyfour was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @thirtyfour.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /thirtyfours/1
  # DELETE /thirtyfours/1.json
  def destroy
    @thirtyfour.destroy
    respond_to do |format|
      format.html { redirect_to thirtyfours_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_thirtyfour
      @thirtyfour = Thirtyfour.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def thirtyfour_params
      params.require(:thirtyfour).permit(:name)
    end
end
