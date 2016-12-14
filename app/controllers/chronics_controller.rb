class ChronicsController < ApplicationController
  before_action :set_chronic, only: [:show, :edit, :update, :destroy]

  # GET /chronics
  # GET /chronics.json
  def index
    @chronics = Chronic.where("patient_id = ?", params[:p_id])
  end

  # GET /chronics/1
  # GET /chronics/1.json
  def show
  end

  # GET /chronics/new
  def new
    @chronic = Chronic.new
  end

  # GET /chronics/1/edit
  def edit
  end

  # POST /chronics
  # POST /chronics.json
  def create
    @chronic = Chronic.new(chronic_params)
    @chronic.patient_id = current_patient.id
    respond_to do |format|
      if @chronic.save
        format.html { redirect_to @chronic, notice: 'Chronic was successfully created.' }
        format.json { render :show, status: :created, location: @chronic }
      else
        format.html { render :new }
        format.json { render json: @chronic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /chronics/1
  # PATCH/PUT /chronics/1.json
  def update
    respond_to do |format|
      if @chronic.update(chronic_params)
        format.html { redirect_to @chronic, notice: 'Chronic was successfully updated.' }
        format.json { render :show, status: :ok, location: @chronic }
      else
        format.html { render :edit }
        format.json { render json: @chronic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chronics/1
  # DELETE /chronics/1.json
  def destroy
    @chronic.destroy
    respond_to do |format|
      format.html { redirect_to chronics_url, notice: 'Chronic was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chronic
      @chronic = Chronic.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def chronic_params
      params.require(:chronic).permit(:patient_id, :date_created, :discomfort_score)
    end
end
