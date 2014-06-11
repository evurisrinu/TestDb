class TwentyfivesController < ApplicationController
  before_action :set_twentyfife, only: [:show, :edit, :update, :destroy]

  # GET /twentyfives
  # GET /twentyfives.json
  def index
    @twentyfives = Twentyfive.all
  end

  # GET /twentyfives/1
  # GET /twentyfives/1.json
  def show
  end

  # GET /twentyfives/new
  def new
    @twentyfife = Twentyfive.new
  end

  # GET /twentyfives/1/edit
  def edit
  end

  # POST /twentyfives
  # POST /twentyfives.json
  def create
    @twentyfife = Twentyfive.new(twentyfife_params)

    respond_to do |format|
      if @twentyfife.save
        format.html { redirect_to @twentyfife, notice: 'Twentyfive was successfully created.' }
        format.json { render action: 'show', status: :created, location: @twentyfife }
      else
        format.html { render action: 'new' }
        format.json { render json: @twentyfife.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /twentyfives/1
  # PATCH/PUT /twentyfives/1.json
  def update
    respond_to do |format|
      if @twentyfife.update(twentyfife_params)
        format.html { redirect_to @twentyfife, notice: 'Twentyfive was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @twentyfife.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /twentyfives/1
  # DELETE /twentyfives/1.json
  def destroy
    @twentyfife.destroy
    respond_to do |format|
      format.html { redirect_to twentyfives_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_twentyfife
      @twentyfife = Twentyfive.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def twentyfife_params
      params.require(:twentyfife).permit(:name)
    end
end
