class SixteensController < ApplicationController
  before_action :set_sixteen, only: [:show, :edit, :update, :destroy]

  # GET /sixteens
  # GET /sixteens.json
  def index
    @sixteens = Sixteen.all
  end

  # GET /sixteens/1
  # GET /sixteens/1.json
  def show
  end

  # GET /sixteens/new
  def new
    @sixteen = Sixteen.new
  end

  # GET /sixteens/1/edit
  def edit
  end

  # POST /sixteens
  # POST /sixteens.json
  def create
    @sixteen = Sixteen.new(sixteen_params)

    respond_to do |format|
      if @sixteen.save
        format.html { redirect_to @sixteen, notice: 'Sixteen was successfully created.' }
        format.json { render action: 'show', status: :created, location: @sixteen }
      else
        format.html { render action: 'new' }
        format.json { render json: @sixteen.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sixteens/1
  # PATCH/PUT /sixteens/1.json
  def update
    respond_to do |format|
      if @sixteen.update(sixteen_params)
        format.html { redirect_to @sixteen, notice: 'Sixteen was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @sixteen.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sixteens/1
  # DELETE /sixteens/1.json
  def destroy
    @sixteen.destroy
    respond_to do |format|
      format.html { redirect_to sixteens_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sixteen
      @sixteen = Sixteen.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sixteen_params
      params.require(:sixteen).permit(:name)
    end
end
