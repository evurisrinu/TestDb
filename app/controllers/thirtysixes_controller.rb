class ThirtysixesController < ApplicationController
  before_action :set_thirtysix, only: [:show, :edit, :update, :destroy]

  # GET /thirtysixes
  # GET /thirtysixes.json
  def index
    @thirtysixes = Thirtysix.all
  end

  # GET /thirtysixes/1
  # GET /thirtysixes/1.json
  def show
  end

  # GET /thirtysixes/new
  def new
    @thirtysix = Thirtysix.new
  end

  # GET /thirtysixes/1/edit
  def edit
  end

  # POST /thirtysixes
  # POST /thirtysixes.json
  def create
    @thirtysix = Thirtysix.new(thirtysix_params)

    respond_to do |format|
      if @thirtysix.save
        format.html { redirect_to @thirtysix, notice: 'Thirtysix was successfully created.' }
        format.json { render action: 'show', status: :created, location: @thirtysix }
      else
        format.html { render action: 'new' }
        format.json { render json: @thirtysix.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /thirtysixes/1
  # PATCH/PUT /thirtysixes/1.json
  def update
    respond_to do |format|
      if @thirtysix.update(thirtysix_params)
        format.html { redirect_to @thirtysix, notice: 'Thirtysix was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @thirtysix.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /thirtysixes/1
  # DELETE /thirtysixes/1.json
  def destroy
    @thirtysix.destroy
    respond_to do |format|
      format.html { redirect_to thirtysixes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_thirtysix
      @thirtysix = Thirtysix.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def thirtysix_params
      params.require(:thirtysix).permit(:name)
    end
end
