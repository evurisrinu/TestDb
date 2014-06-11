class ThirtyonesController < ApplicationController
  before_action :set_thirtyone, only: [:show, :edit, :update, :destroy]

  # GET /thirtyones
  # GET /thirtyones.json
  def index
    @thirtyones = Thirtyone.all
  end

  # GET /thirtyones/1
  # GET /thirtyones/1.json
  def show
  end

  # GET /thirtyones/new
  def new
    @thirtyone = Thirtyone.new
  end

  # GET /thirtyones/1/edit
  def edit
  end

  # POST /thirtyones
  # POST /thirtyones.json
  def create
    @thirtyone = Thirtyone.new(thirtyone_params)

    respond_to do |format|
      if @thirtyone.save
        format.html { redirect_to @thirtyone, notice: 'Thirtyone was successfully created.' }
        format.json { render action: 'show', status: :created, location: @thirtyone }
      else
        format.html { render action: 'new' }
        format.json { render json: @thirtyone.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /thirtyones/1
  # PATCH/PUT /thirtyones/1.json
  def update
    respond_to do |format|
      if @thirtyone.update(thirtyone_params)
        format.html { redirect_to @thirtyone, notice: 'Thirtyone was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @thirtyone.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /thirtyones/1
  # DELETE /thirtyones/1.json
  def destroy
    @thirtyone.destroy
    respond_to do |format|
      format.html { redirect_to thirtyones_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_thirtyone
      @thirtyone = Thirtyone.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def thirtyone_params
      params.require(:thirtyone).permit(:name)
    end
end
