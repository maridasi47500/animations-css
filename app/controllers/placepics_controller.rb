class PlacepicsController < ApplicationController
  before_action :set_placepic, only: %i[ show edit update destroy ]

  # GET /placepics or /placepics.json
  def index
    @placepics = Placepic.all
  end

  # GET /placepics/1 or /placepics/1.json
  def show
  end

  # GET /placepics/new
  def new
    @placepic = Placepic.new
  end

  # GET /placepics/1/edit
  def edit
  end

  # POST /placepics or /placepics.json
  def create
    @placepic = Placepic.new(placepic_params)

    respond_to do |format|
      if @placepic.save
        format.html { redirect_to placepic_url(@placepic), notice: "Placepic was successfully created." }
        format.json { render :show, status: :created, location: @placepic }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @placepic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /placepics/1 or /placepics/1.json
  def update
    respond_to do |format|
      if @placepic.update(placepic_params)
        format.html { redirect_to placepic_url(@placepic), notice: "Placepic was successfully updated." }
        format.json { render :show, status: :ok, location: @placepic }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @placepic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /placepics/1 or /placepics/1.json
  def destroy
    @placepic.destroy

    respond_to do |format|
      format.html { redirect_to placepics_url, notice: "Placepic was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_placepic
      @placepic = Placepic.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def placepic_params
      params.require(:placepic).permit(:pic, :title)
    end
end
