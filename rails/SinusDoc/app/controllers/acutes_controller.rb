class AcutesController < ApplicationController
  before_action :set_acute, only: [:show, :edit, :update, :destroy]

  # GET /acutes
  # GET /acutes.json
  def index
    @acutes = Acute.all
  end

  # GET /acutes/1
  # GET /acutes/1.json
  def show
  end

  # GET /acutes/new
  def new
    @acute = Acute.new
  end

  # GET /acutes/1/edit
  def edit
  end

  # POST /acutes
  # POST /acutes.json
  def create
    @acute = Acute.new(acute_params)
    @acute.patient_id = current_patient.id

    respond_to do |format|
      if @acute.save
        format.html { redirect_to @acute, notice: 'Acute was successfully created.' }
        format.json { render :show, status: :created, location: @acute }
      else
        format.html { render :new }
        format.json { render json: @acute.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /acutes/1
  # PATCH/PUT /acutes/1.json
  def update
    respond_to do |format|
      if @acute.update(acute_params)
        format.html { redirect_to @acute, notice: 'Acute was successfully updated.' }
        format.json { render :show, status: :ok, location: @acute }
      else
        format.html { render :edit }
        format.json { render json: @acute.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /acutes/1
  # DELETE /acutes/1.json
  def destroy
    @acute.destroy
    respond_to do |format|
      format.html { redirect_to acutes_url, notice: 'Acute was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_acute
      @acute = Acute.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def acute_params
      params.require(:acute).permit(:patient_id, :date_created, :answer)
    end
end
