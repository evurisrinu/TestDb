class ThreesController < ApplicationController
  before_action :set_three, only: [:show, :edit, :update, :destroy]

  # GET /threes
  # GET /threes.json
  def index
    @threes = Three.all
  end

  # GET /threes/1
  # GET /threes/1.json
  def show
  end

  # GET /threes/new
  def new
    @three = Three.new
  end

  # GET /threes/1/edit
  def edit
  end

  # POST /threes
  # POST /threes.json
  def create
    @three = Three.new(three_params)

    respond_to do |format|
      if @three.save
        format.html { redirect_to @three, notice: 'Three was successfully created.' }
        format.json { render action: 'show', status: :created, location: @three }
      else
        format.html { render action: 'new' }
        format.json { render json: @three.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /threes/1
  # PATCH/PUT /threes/1.json
  def update
    respond_to do |format|
      if @three.update(three_params)
        format.html { redirect_to @three, notice: 'Three was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @three.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /threes/1
  # DELETE /threes/1.json
  def destroy
    @three.destroy
    respond_to do |format|
      format.html { redirect_to threes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_three
      @three = Three.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def three_params
      params.require(:three).permit(:name)
    end
end
