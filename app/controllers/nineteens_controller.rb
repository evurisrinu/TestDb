class NineteensController < ApplicationController
  before_action :set_nineteen, only: [:show, :edit, :update, :destroy]

  # GET /nineteens
  # GET /nineteens.json
  def index
    @nineteens = Nineteen.all
  end

  # GET /nineteens/1
  # GET /nineteens/1.json
  def show
  end

  # GET /nineteens/new
  def new
    @nineteen = Nineteen.new
  end

  # GET /nineteens/1/edit
  def edit
  end

  # POST /nineteens
  # POST /nineteens.json
  def create
    @nineteen = Nineteen.new(nineteen_params)

    respond_to do |format|
      if @nineteen.save
        format.html { redirect_to @nineteen, notice: 'Nineteen was successfully created.' }
        format.json { render action: 'show', status: :created, location: @nineteen }
      else
        format.html { render action: 'new' }
        format.json { render json: @nineteen.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /nineteens/1
  # PATCH/PUT /nineteens/1.json
  def update
    respond_to do |format|
      if @nineteen.update(nineteen_params)
        format.html { redirect_to @nineteen, notice: 'Nineteen was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @nineteen.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nineteens/1
  # DELETE /nineteens/1.json
  def destroy
    @nineteen.destroy
    respond_to do |format|
      format.html { redirect_to nineteens_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nineteen
      @nineteen = Nineteen.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def nineteen_params
      params.require(:nineteen).permit(:name)
    end
end
