class TwentysixesController < ApplicationController
  before_action :set_twentysix, only: [:show, :edit, :update, :destroy]

  # GET /twentysixes
  # GET /twentysixes.json
  def index
    @twentysixes = Twentysix.all
  end

  # GET /twentysixes/1
  # GET /twentysixes/1.json
  def show
  end

  # GET /twentysixes/new
  def new
    @twentysix = Twentysix.new
  end

  # GET /twentysixes/1/edit
  def edit
  end

  # POST /twentysixes
  # POST /twentysixes.json
  def create
    @twentysix = Twentysix.new(twentysix_params)

    respond_to do |format|
      if @twentysix.save
        format.html { redirect_to @twentysix, notice: 'Twentysix was successfully created.' }
        format.json { render action: 'show', status: :created, location: @twentysix }
      else
        format.html { render action: 'new' }
        format.json { render json: @twentysix.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /twentysixes/1
  # PATCH/PUT /twentysixes/1.json
  def update
    respond_to do |format|
      if @twentysix.update(twentysix_params)
        format.html { redirect_to @twentysix, notice: 'Twentysix was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @twentysix.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /twentysixes/1
  # DELETE /twentysixes/1.json
  def destroy
    @twentysix.destroy
    respond_to do |format|
      format.html { redirect_to twentysixes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_twentysix
      @twentysix = Twentysix.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def twentysix_params
      params.require(:twentysix).permit(:name)
    end
end
