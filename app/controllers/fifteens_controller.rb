class FifteensController < ApplicationController
  before_action :set_fifteen, only: [:show, :edit, :update, :destroy]

  # GET /fifteens
  # GET /fifteens.json
  def index
    @fifteens = Fifteen.all
  end

  # GET /fifteens/1
  # GET /fifteens/1.json
  def show
  end

  # GET /fifteens/new
  def new
    @fifteen = Fifteen.new
  end

  # GET /fifteens/1/edit
  def edit
  end

  # POST /fifteens
  # POST /fifteens.json
  def create
    @fifteen = Fifteen.new(fifteen_params)

    respond_to do |format|
      if @fifteen.save
        format.html { redirect_to @fifteen, notice: 'Fifteen was successfully created.' }
        format.json { render action: 'show', status: :created, location: @fifteen }
      else
        format.html { render action: 'new' }
        format.json { render json: @fifteen.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fifteens/1
  # PATCH/PUT /fifteens/1.json
  def update
    respond_to do |format|
      if @fifteen.update(fifteen_params)
        format.html { redirect_to @fifteen, notice: 'Fifteen was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @fifteen.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fifteens/1
  # DELETE /fifteens/1.json
  def destroy
    @fifteen.destroy
    respond_to do |format|
      format.html { redirect_to fifteens_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fifteen
      @fifteen = Fifteen.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fifteen_params
      params.require(:fifteen).permit(:name)
    end
end
