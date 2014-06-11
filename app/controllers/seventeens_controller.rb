class SeventeensController < ApplicationController
  before_action :set_seventeen, only: [:show, :edit, :update, :destroy]

  # GET /seventeens
  # GET /seventeens.json
  def index
    @seventeens = Seventeen.all
  end

  # GET /seventeens/1
  # GET /seventeens/1.json
  def show
  end

  # GET /seventeens/new
  def new
    @seventeen = Seventeen.new
  end

  # GET /seventeens/1/edit
  def edit
  end

  # POST /seventeens
  # POST /seventeens.json
  def create
    @seventeen = Seventeen.new(seventeen_params)

    respond_to do |format|
      if @seventeen.save
        format.html { redirect_to @seventeen, notice: 'Seventeen was successfully created.' }
        format.json { render action: 'show', status: :created, location: @seventeen }
      else
        format.html { render action: 'new' }
        format.json { render json: @seventeen.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /seventeens/1
  # PATCH/PUT /seventeens/1.json
  def update
    respond_to do |format|
      if @seventeen.update(seventeen_params)
        format.html { redirect_to @seventeen, notice: 'Seventeen was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @seventeen.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /seventeens/1
  # DELETE /seventeens/1.json
  def destroy
    @seventeen.destroy
    respond_to do |format|
      format.html { redirect_to seventeens_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_seventeen
      @seventeen = Seventeen.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def seventeen_params
      params.require(:seventeen).permit(:name)
    end
end
