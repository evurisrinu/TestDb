class ElevensController < ApplicationController
  before_action :set_eleven, only: [:show, :edit, :update, :destroy]

  # GET /elevens
  # GET /elevens.json
  def index
    @elevens = Eleven.all
  end

  # GET /elevens/1
  # GET /elevens/1.json
  def show
  end

  # GET /elevens/new
  def new
    @eleven = Eleven.new
  end

  # GET /elevens/1/edit
  def edit
  end

  # POST /elevens
  # POST /elevens.json
  def create
    @eleven = Eleven.new(eleven_params)

    respond_to do |format|
      if @eleven.save
        format.html { redirect_to @eleven, notice: 'Eleven was successfully created.' }
        format.json { render action: 'show', status: :created, location: @eleven }
      else
        format.html { render action: 'new' }
        format.json { render json: @eleven.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /elevens/1
  # PATCH/PUT /elevens/1.json
  def update
    respond_to do |format|
      if @eleven.update(eleven_params)
        format.html { redirect_to @eleven, notice: 'Eleven was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @eleven.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /elevens/1
  # DELETE /elevens/1.json
  def destroy
    @eleven.destroy
    respond_to do |format|
      format.html { redirect_to elevens_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_eleven
      @eleven = Eleven.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def eleven_params
      params.require(:eleven).permit(:name)
    end
end
