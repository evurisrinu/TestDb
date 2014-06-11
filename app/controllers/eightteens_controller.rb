class EightteensController < ApplicationController
  before_action :set_eightteen, only: [:show, :edit, :update, :destroy]

  # GET /eightteens
  # GET /eightteens.json
  def index
    @eightteens = Eightteen.all
  end

  # GET /eightteens/1
  # GET /eightteens/1.json
  def show
  end

  # GET /eightteens/new
  def new
    @eightteen = Eightteen.new
  end

  # GET /eightteens/1/edit
  def edit
  end

  # POST /eightteens
  # POST /eightteens.json
  def create
    @eightteen = Eightteen.new(eightteen_params)

    respond_to do |format|
      if @eightteen.save
        format.html { redirect_to @eightteen, notice: 'Eightteen was successfully created.' }
        format.json { render action: 'show', status: :created, location: @eightteen }
      else
        format.html { render action: 'new' }
        format.json { render json: @eightteen.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /eightteens/1
  # PATCH/PUT /eightteens/1.json
  def update
    respond_to do |format|
      if @eightteen.update(eightteen_params)
        format.html { redirect_to @eightteen, notice: 'Eightteen was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @eightteen.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /eightteens/1
  # DELETE /eightteens/1.json
  def destroy
    @eightteen.destroy
    respond_to do |format|
      format.html { redirect_to eightteens_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_eightteen
      @eightteen = Eightteen.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def eightteen_params
      params.require(:eightteen).permit(:name)
    end
end
