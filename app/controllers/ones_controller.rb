class OnesController < ApplicationController
  before_action :set_one, only: [:show, :edit, :update, :destroy]

  # GET /ones
  # GET /ones.json
  def index
    @ones = One.all
  end

  # GET /ones/1
  # GET /ones/1.json
  def show
  end

  # GET /ones/new
  def new
    @one = One.new
  end

  # GET /ones/1/edit
  def edit
  end

  # POST /ones
  # POST /ones.json
  def create
    @one = One.new(one_params)

    respond_to do |format|
      if @one.save
        format.html { redirect_to @one, notice: 'One was successfully created.' }
        format.json { render action: 'show', status: :created, location: @one }
      else
        format.html { render action: 'new' }
        format.json { render json: @one.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ones/1
  # PATCH/PUT /ones/1.json
  def update
    respond_to do |format|
      if @one.update(one_params)
        format.html { redirect_to @one, notice: 'One was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @one.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ones/1
  # DELETE /ones/1.json
  def destroy
    @one.destroy
    respond_to do |format|
      format.html { redirect_to ones_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_one
      @one = One.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def one_params
      params.require(:one).permit(:name)
    end
end
