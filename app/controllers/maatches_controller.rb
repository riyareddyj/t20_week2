class MaatchesController < ApplicationController
  before_action :set_maatch, only: %i[ show edit update destroy ]

  # GET /maatches or /maatches.json
  def index
    @maatches = Maatch.all
  end

  # GET /maatches/1 or /maatches/1.json
  def show
  end

  # GET /maatches/new
  def new
    @maatch = Maatch.new
  end

  # GET /maatches/1/edit
  def edit
  end

  # POST /maatches or /maatches.json
  def create
    @maatch = Maatch.new(maatch_params)

    respond_to do |format|
      if @maatch.save
        format.html { redirect_to maatch_url(@maatch), notice: "Maatch was successfully created." }
        format.json { render :show, status: :created, location: @maatch }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @maatch.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /maatches/1 or /maatches/1.json
  def update
    respond_to do |format|
      if @maatch.update(maatch_params)
        format.html { redirect_to maatch_url(@maatch), notice: "Maatch was successfully updated." }
        format.json { render :show, status: :ok, location: @maatch }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @maatch.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /maatches/1 or /maatches/1.json
  def destroy
    @maatch.destroy!

    respond_to do |format|
      format.html { redirect_to maatches_url, notice: "Maatch was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_maatch
      @maatch = Maatch.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def maatch_params
      params.require(:maatch).permit(:location, :date, :home_team_id, :away_team_id)
    end
end
