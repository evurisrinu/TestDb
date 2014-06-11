class TwentysevensController < ApplicationController
  before_action :set_twentyseven, only: [:show, :edit, :update, :destroy]

  # GET /twentysevens
  # GET /twentysevens.json
  def index
    @twentysevens = Twentyseven.all
  end

  # GET /twentysevens/1
  # GET /twentysevens/1.json
  def show
  end

  # GET /twentysevens/new
  def new
    @twentyseven = Twentyseven.new
  end

  # GET /twentysevens/1/edit
  def edit
  end

  # POST /twentysevens
  # POST /twentysevens.json
  def create
    @twentyseven = Twentyseven.new(twentyseven_params)

    respond_to do |format|
      if @twentyseven.save
        format.html { redirect_to @twentyseven, notice: 'Twentyseven was successfully created.' }
        format.json { render action: 'show', status: :created, location: @twentyseven }
      else
        format.html { render action: 'new' }
        format.json { render json: @twentyseven.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /twentysevens/1
  # PATCH/PUT /twentysevens/1.json
  def update
    respond_to do |format|
      if @twentyseven.update(twentyseven_params)
        format.html { redirect_to @twentyseven, notice: 'Twentyseven was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @twentyseven.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /twentysevens/1
  # DELETE /twentysevens/1.json
  def destroy
    @twentyseven.destroy
    respond_to do |format|
      format.html { redirect_to twentysevens_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_twentyseven
      @twentyseven = Twentyseven.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def twentyseven_params
      params.require(:twentyseven).permit(:name)
    end
end
