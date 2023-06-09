class StuffpicsController < ApplicationController
  before_action :set_stuffpic, only: %i[ show edit update destroy ]

  # GET /stuffpics or /stuffpics.json
  def index
    @stuffpics = Stuffpic.all
  end

  # GET /stuffpics/1 or /stuffpics/1.json
  def show
  end

  # GET /stuffpics/new
  def new
    @stuffpic = Stuffpic.new
  end

  # GET /stuffpics/1/edit
  def edit
  end

  # POST /stuffpics or /stuffpics.json
  def create
    @stuffpic = Stuffpic.new(stuffpic_params)

    respond_to do |format|
      if @stuffpic.save
        format.html { redirect_to stuffpic_url(@stuffpic), notice: "Stuffpic was successfully created." }
        format.json { render :show, status: :created, location: @stuffpic }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @stuffpic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /stuffpics/1 or /stuffpics/1.json
  def update
    respond_to do |format|
      if @stuffpic.update(stuffpic_params)
        format.html { redirect_to stuffpic_url(@stuffpic), notice: "Stuffpic was successfully updated." }
        format.json { render :show, status: :ok, location: @stuffpic }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @stuffpic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stuffpics/1 or /stuffpics/1.json
  def destroy
    @stuffpic.destroy

    respond_to do |format|
      format.html { redirect_to stuffpics_url, notice: "Stuffpic was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stuffpic
      @stuffpic = Stuffpic.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def stuffpic_params
      params.require(:stuffpic).permit(:pic, :title)
    end
end
