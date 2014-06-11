class TwelvesController < ApplicationController
  before_action :set_twelf, only: [:show, :edit, :update, :destroy]

  # GET /twelves
  # GET /twelves.json
  def index
    @twelves = Twelve.all
  end

  # GET /twelves/1
  # GET /twelves/1.json
  def show
  end

  # GET /twelves/new
  def new
    @twelf = Twelve.new
  end

  # GET /twelves/1/edit
  def edit
  end

  # POST /twelves
  # POST /twelves.json
  def create
    @twelf = Twelve.new(twelf_params)

    respond_to do |format|
      if @twelf.save
        format.html { redirect_to @twelf, notice: 'Twelve was successfully created.' }
        format.json { render action: 'show', status: :created, location: @twelf }
      else
        format.html { render action: 'new' }
        format.json { render json: @twelf.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /twelves/1
  # PATCH/PUT /twelves/1.json
  def update
    respond_to do |format|
      if @twelf.update(twelf_params)
        format.html { redirect_to @twelf, notice: 'Twelve was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @twelf.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /twelves/1
  # DELETE /twelves/1.json
  def destroy
    @twelf.destroy
    respond_to do |format|
      format.html { redirect_to twelves_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_twelf
      @twelf = Twelve.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def twelf_params
      params.require(:twelf).permit(:name)
    end
end
