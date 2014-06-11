class SixesController < ApplicationController
  before_action :set_six, only: [:show, :edit, :update, :destroy]

  # GET /sixes
  # GET /sixes.json
  def index
    @sixes = Six.all
  end

  # GET /sixes/1
  # GET /sixes/1.json
  def show
  end

  # GET /sixes/new
  def new
    @six = Six.new
  end

  # GET /sixes/1/edit
  def edit
  end

  # POST /sixes
  # POST /sixes.json
  def create
    @six = Six.new(six_params)

    respond_to do |format|
      if @six.save
        format.html { redirect_to @six, notice: 'Six was successfully created.' }
        format.json { render action: 'show', status: :created, location: @six }
      else
        format.html { render action: 'new' }
        format.json { render json: @six.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sixes/1
  # PATCH/PUT /sixes/1.json
  def update
    respond_to do |format|
      if @six.update(six_params)
        format.html { redirect_to @six, notice: 'Six was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @six.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sixes/1
  # DELETE /sixes/1.json
  def destroy
    @six.destroy
    respond_to do |format|
      format.html { redirect_to sixes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_six
      @six = Six.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def six_params
      params.require(:six).permit(:name)
    end
end
