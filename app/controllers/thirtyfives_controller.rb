class ThirtyfivesController < ApplicationController
  before_action :set_thirtyfife, only: [:show, :edit, :update, :destroy]

  # GET /thirtyfives
  # GET /thirtyfives.json
  def index
    @thirtyfives = Thirtyfive.all
  end

  # GET /thirtyfives/1
  # GET /thirtyfives/1.json
  def show
  end

  # GET /thirtyfives/new
  def new
    @thirtyfife = Thirtyfive.new
  end

  # GET /thirtyfives/1/edit
  def edit
  end

  # POST /thirtyfives
  # POST /thirtyfives.json
  def create
    @thirtyfife = Thirtyfive.new(thirtyfife_params)

    respond_to do |format|
      if @thirtyfife.save
        format.html { redirect_to @thirtyfife, notice: 'Thirtyfive was successfully created.' }
        format.json { render action: 'show', status: :created, location: @thirtyfife }
      else
        format.html { render action: 'new' }
        format.json { render json: @thirtyfife.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /thirtyfives/1
  # PATCH/PUT /thirtyfives/1.json
  def update
    respond_to do |format|
      if @thirtyfife.update(thirtyfife_params)
        format.html { redirect_to @thirtyfife, notice: 'Thirtyfive was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @thirtyfife.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /thirtyfives/1
  # DELETE /thirtyfives/1.json
  def destroy
    @thirtyfife.destroy
    respond_to do |format|
      format.html { redirect_to thirtyfives_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_thirtyfife
      @thirtyfife = Thirtyfive.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def thirtyfife_params
      params.require(:thirtyfife).permit(:name)
    end
end
