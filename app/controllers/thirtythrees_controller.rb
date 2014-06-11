class ThirtythreesController < ApplicationController
  before_action :set_thirtythree, only: [:show, :edit, :update, :destroy]

  # GET /thirtythrees
  # GET /thirtythrees.json
  def index
    @thirtythrees = Thirtythree.all
  end

  # GET /thirtythrees/1
  # GET /thirtythrees/1.json
  def show
  end

  # GET /thirtythrees/new
  def new
    @thirtythree = Thirtythree.new
  end

  # GET /thirtythrees/1/edit
  def edit
  end

  # POST /thirtythrees
  # POST /thirtythrees.json
  def create
    @thirtythree = Thirtythree.new(thirtythree_params)

    respond_to do |format|
      if @thirtythree.save
        format.html { redirect_to @thirtythree, notice: 'Thirtythree was successfully created.' }
        format.json { render action: 'show', status: :created, location: @thirtythree }
      else
        format.html { render action: 'new' }
        format.json { render json: @thirtythree.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /thirtythrees/1
  # PATCH/PUT /thirtythrees/1.json
  def update
    respond_to do |format|
      if @thirtythree.update(thirtythree_params)
        format.html { redirect_to @thirtythree, notice: 'Thirtythree was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @thirtythree.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /thirtythrees/1
  # DELETE /thirtythrees/1.json
  def destroy
    @thirtythree.destroy
    respond_to do |format|
      format.html { redirect_to thirtythrees_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_thirtythree
      @thirtythree = Thirtythree.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def thirtythree_params
      params.require(:thirtythree).permit(:name)
    end
end
