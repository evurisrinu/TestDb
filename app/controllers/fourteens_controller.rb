class FourteensController < ApplicationController
  before_action :set_fourteen, only: [:show, :edit, :update, :destroy]

  # GET /fourteens
  # GET /fourteens.json
  def index
    @fourteens = Fourteen.all
  end

  # GET /fourteens/1
  # GET /fourteens/1.json
  def show
  end

  # GET /fourteens/new
  def new
    @fourteen = Fourteen.new
  end

  # GET /fourteens/1/edit
  def edit
  end

  # POST /fourteens
  # POST /fourteens.json
  def create
    @fourteen = Fourteen.new(fourteen_params)

    respond_to do |format|
      if @fourteen.save
        format.html { redirect_to @fourteen, notice: 'Fourteen was successfully created.' }
        format.json { render action: 'show', status: :created, location: @fourteen }
      else
        format.html { render action: 'new' }
        format.json { render json: @fourteen.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fourteens/1
  # PATCH/PUT /fourteens/1.json
  def update
    respond_to do |format|
      if @fourteen.update(fourteen_params)
        format.html { redirect_to @fourteen, notice: 'Fourteen was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @fourteen.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fourteens/1
  # DELETE /fourteens/1.json
  def destroy
    @fourteen.destroy
    respond_to do |format|
      format.html { redirect_to fourteens_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fourteen
      @fourteen = Fourteen.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fourteen_params
      params.require(:fourteen).permit(:name)
    end
end
