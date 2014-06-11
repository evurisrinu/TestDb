class ThirtiesController < ApplicationController
  before_action :set_thirty, only: [:show, :edit, :update, :destroy]

  # GET /thirties
  # GET /thirties.json
  def index
    @thirties = Thirty.all
  end

  # GET /thirties/1
  # GET /thirties/1.json
  def show
  end

  # GET /thirties/new
  def new
    @thirty = Thirty.new
  end

  # GET /thirties/1/edit
  def edit
  end

  # POST /thirties
  # POST /thirties.json
  def create
    @thirty = Thirty.new(thirty_params)

    respond_to do |format|
      if @thirty.save
        format.html { redirect_to @thirty, notice: 'Thirty was successfully created.' }
        format.json { render action: 'show', status: :created, location: @thirty }
      else
        format.html { render action: 'new' }
        format.json { render json: @thirty.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /thirties/1
  # PATCH/PUT /thirties/1.json
  def update
    respond_to do |format|
      if @thirty.update(thirty_params)
        format.html { redirect_to @thirty, notice: 'Thirty was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @thirty.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /thirties/1
  # DELETE /thirties/1.json
  def destroy
    @thirty.destroy
    respond_to do |format|
      format.html { redirect_to thirties_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_thirty
      @thirty = Thirty.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def thirty_params
      params.require(:thirty).permit(:name)
    end
end
