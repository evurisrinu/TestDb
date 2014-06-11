class TwentytwosController < ApplicationController
  before_action :set_twentytwo, only: [:show, :edit, :update, :destroy]

  # GET /twentytwos
  # GET /twentytwos.json
  def index
    @twentytwos = Twentytwo.all
  end

  # GET /twentytwos/1
  # GET /twentytwos/1.json
  def show
  end

  # GET /twentytwos/new
  def new
    @twentytwo = Twentytwo.new
  end

  # GET /twentytwos/1/edit
  def edit
  end

  # POST /twentytwos
  # POST /twentytwos.json
  def create
    @twentytwo = Twentytwo.new(twentytwo_params)

    respond_to do |format|
      if @twentytwo.save
        format.html { redirect_to @twentytwo, notice: 'Twentytwo was successfully created.' }
        format.json { render action: 'show', status: :created, location: @twentytwo }
      else
        format.html { render action: 'new' }
        format.json { render json: @twentytwo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /twentytwos/1
  # PATCH/PUT /twentytwos/1.json
  def update
    respond_to do |format|
      if @twentytwo.update(twentytwo_params)
        format.html { redirect_to @twentytwo, notice: 'Twentytwo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @twentytwo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /twentytwos/1
  # DELETE /twentytwos/1.json
  def destroy
    @twentytwo.destroy
    respond_to do |format|
      format.html { redirect_to twentytwos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_twentytwo
      @twentytwo = Twentytwo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def twentytwo_params
      params.require(:twentytwo).permit(:name)
    end
end
