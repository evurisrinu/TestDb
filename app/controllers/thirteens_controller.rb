class ThirteensController < ApplicationController
  before_action :set_thirteen, only: [:show, :edit, :update, :destroy]

  # GET /thirteens
  # GET /thirteens.json
  def index
    @thirteens = Thirteen.all
  end

  # GET /thirteens/1
  # GET /thirteens/1.json
  def show
  end

  # GET /thirteens/new
  def new
    @thirteen = Thirteen.new
  end

  # GET /thirteens/1/edit
  def edit
  end

  # POST /thirteens
  # POST /thirteens.json
  def create
    @thirteen = Thirteen.new(thirteen_params)

    respond_to do |format|
      if @thirteen.save
        format.html { redirect_to @thirteen, notice: 'Thirteen was successfully created.' }
        format.json { render action: 'show', status: :created, location: @thirteen }
      else
        format.html { render action: 'new' }
        format.json { render json: @thirteen.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /thirteens/1
  # PATCH/PUT /thirteens/1.json
  def update
    respond_to do |format|
      if @thirteen.update(thirteen_params)
        format.html { redirect_to @thirteen, notice: 'Thirteen was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @thirteen.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /thirteens/1
  # DELETE /thirteens/1.json
  def destroy
    @thirteen.destroy
    respond_to do |format|
      format.html { redirect_to thirteens_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_thirteen
      @thirteen = Thirteen.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def thirteen_params
      params.require(:thirteen).permit(:name)
    end
end
