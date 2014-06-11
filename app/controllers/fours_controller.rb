class FoursController < ApplicationController
  before_action :set_four, only: [:show, :edit, :update, :destroy]

  # GET /fours
  # GET /fours.json
  def index
    @fours = Four.all
  end

  # GET /fours/1
  # GET /fours/1.json
  def show
  end

  # GET /fours/new
  def new
    @four = Four.new
  end

  # GET /fours/1/edit
  def edit
  end

  # POST /fours
  # POST /fours.json
  def create
    @four = Four.new(four_params)

    respond_to do |format|
      if @four.save
        format.html { redirect_to @four, notice: 'Four was successfully created.' }
        format.json { render action: 'show', status: :created, location: @four }
      else
        format.html { render action: 'new' }
        format.json { render json: @four.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fours/1
  # PATCH/PUT /fours/1.json
  def update
    respond_to do |format|
      if @four.update(four_params)
        format.html { redirect_to @four, notice: 'Four was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @four.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fours/1
  # DELETE /fours/1.json
  def destroy
    @four.destroy
    respond_to do |format|
      format.html { redirect_to fours_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_four
      @four = Four.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def four_params
      params.require(:four).permit(:name)
    end
end
