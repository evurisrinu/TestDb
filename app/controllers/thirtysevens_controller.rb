class ThirtysevensController < ApplicationController
  before_action :set_thirtyseven, only: [:show, :edit, :update, :destroy]

  # GET /thirtysevens
  # GET /thirtysevens.json
  def index
    @thirtysevens = Thirtyseven.all
  end

  # GET /thirtysevens/1
  # GET /thirtysevens/1.json
  def show
  end

  # GET /thirtysevens/new
  def new
    @thirtyseven = Thirtyseven.new
  end

  # GET /thirtysevens/1/edit
  def edit
  end

  # POST /thirtysevens
  # POST /thirtysevens.json
  def create
    @thirtyseven = Thirtyseven.new(thirtyseven_params)

    respond_to do |format|
      if @thirtyseven.save
        format.html { redirect_to @thirtyseven, notice: 'Thirtyseven was successfully created.' }
        format.json { render action: 'show', status: :created, location: @thirtyseven }
      else
        format.html { render action: 'new' }
        format.json { render json: @thirtyseven.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /thirtysevens/1
  # PATCH/PUT /thirtysevens/1.json
  def update
    respond_to do |format|
      if @thirtyseven.update(thirtyseven_params)
        format.html { redirect_to @thirtyseven, notice: 'Thirtyseven was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @thirtyseven.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /thirtysevens/1
  # DELETE /thirtysevens/1.json
  def destroy
    @thirtyseven.destroy
    respond_to do |format|
      format.html { redirect_to thirtysevens_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_thirtyseven
      @thirtyseven = Thirtyseven.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def thirtyseven_params
      params.require(:thirtyseven).permit(:name)
    end
end
