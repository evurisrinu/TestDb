class TwentythreesController < ApplicationController
  before_action :set_twentythree, only: [:show, :edit, :update, :destroy]

  # GET /twentythrees
  # GET /twentythrees.json
  def index
    @twentythrees = Twentythree.all
  end

  # GET /twentythrees/1
  # GET /twentythrees/1.json
  def show
  end

  # GET /twentythrees/new
  def new
    @twentythree = Twentythree.new
  end

  # GET /twentythrees/1/edit
  def edit
  end

  # POST /twentythrees
  # POST /twentythrees.json
  def create
    @twentythree = Twentythree.new(twentythree_params)

    respond_to do |format|
      if @twentythree.save
        format.html { redirect_to @twentythree, notice: 'Twentythree was successfully created.' }
        format.json { render action: 'show', status: :created, location: @twentythree }
      else
        format.html { render action: 'new' }
        format.json { render json: @twentythree.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /twentythrees/1
  # PATCH/PUT /twentythrees/1.json
  def update
    respond_to do |format|
      if @twentythree.update(twentythree_params)
        format.html { redirect_to @twentythree, notice: 'Twentythree was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @twentythree.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /twentythrees/1
  # DELETE /twentythrees/1.json
  def destroy
    @twentythree.destroy
    respond_to do |format|
      format.html { redirect_to twentythrees_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_twentythree
      @twentythree = Twentythree.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def twentythree_params
      params.require(:twentythree).permit(:name)
    end
end
