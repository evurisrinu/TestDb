class TwentyonesController < ApplicationController
  before_action :set_twentyone, only: [:show, :edit, :update, :destroy]

  # GET /twentyones
  # GET /twentyones.json
  def index
    @twentyones = Twentyone.all
  end

  # GET /twentyones/1
  # GET /twentyones/1.json
  def show
  end

  # GET /twentyones/new
  def new
    @twentyone = Twentyone.new
  end

  # GET /twentyones/1/edit
  def edit
  end

  # POST /twentyones
  # POST /twentyones.json
  def create
    @twentyone = Twentyone.new(twentyone_params)

    respond_to do |format|
      if @twentyone.save
        format.html { redirect_to @twentyone, notice: 'Twentyone was successfully created.' }
        format.json { render action: 'show', status: :created, location: @twentyone }
      else
        format.html { render action: 'new' }
        format.json { render json: @twentyone.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /twentyones/1
  # PATCH/PUT /twentyones/1.json
  def update
    respond_to do |format|
      if @twentyone.update(twentyone_params)
        format.html { redirect_to @twentyone, notice: 'Twentyone was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @twentyone.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /twentyones/1
  # DELETE /twentyones/1.json
  def destroy
    @twentyone.destroy
    respond_to do |format|
      format.html { redirect_to twentyones_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_twentyone
      @twentyone = Twentyone.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def twentyone_params
      params.require(:twentyone).permit(:name)
    end
end
