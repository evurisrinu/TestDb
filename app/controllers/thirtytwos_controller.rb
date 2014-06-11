class ThirtytwosController < ApplicationController
  before_action :set_thirtytwo, only: [:show, :edit, :update, :destroy]

  # GET /thirtytwos
  # GET /thirtytwos.json
  def index
    @thirtytwos = Thirtytwo.all
  end

  # GET /thirtytwos/1
  # GET /thirtytwos/1.json
  def show
  end

  # GET /thirtytwos/new
  def new
    @thirtytwo = Thirtytwo.new
  end

  # GET /thirtytwos/1/edit
  def edit
  end

  # POST /thirtytwos
  # POST /thirtytwos.json
  def create
    @thirtytwo = Thirtytwo.new(thirtytwo_params)

    respond_to do |format|
      if @thirtytwo.save
        format.html { redirect_to @thirtytwo, notice: 'Thirtytwo was successfully created.' }
        format.json { render action: 'show', status: :created, location: @thirtytwo }
      else
        format.html { render action: 'new' }
        format.json { render json: @thirtytwo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /thirtytwos/1
  # PATCH/PUT /thirtytwos/1.json
  def update
    respond_to do |format|
      if @thirtytwo.update(thirtytwo_params)
        format.html { redirect_to @thirtytwo, notice: 'Thirtytwo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @thirtytwo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /thirtytwos/1
  # DELETE /thirtytwos/1.json
  def destroy
    @thirtytwo.destroy
    respond_to do |format|
      format.html { redirect_to thirtytwos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_thirtytwo
      @thirtytwo = Thirtytwo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def thirtytwo_params
      params.require(:thirtytwo).permit(:name)
    end
end
