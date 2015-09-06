class TourProgramsController < ApplicationController
  before_action :set_tour_program, only: [:show, :edit, :update, :destroy]
  layout "backend"
  before_action :authenticate_admin!
  # GET /tour_programs
  # GET /tour_programs.json
  def index
    @tour_programs = TourProgram.all
  end

  # GET /tour_programs/1
  # GET /tour_programs/1.json
  def show
  end

  # GET /tour_programs/new
  def new
    @tour_program = TourProgram.new
  end

  # GET /tour_programs/1/edit
  def edit
  end

  # POST /tour_programs
  # POST /tour_programs.json
  def create
    @tour_program = TourProgram.new(tour_program_params)

    respond_to do |format|
      if @tour_program.save
        format.html { redirect_to @tour_program, notice: 'Tour program was successfully created.' }
        format.json { render :show, status: :created, location: @tour_program }
      else
        format.html { render :new }
        format.json { render json: @tour_program.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tour_programs/1
  # PATCH/PUT /tour_programs/1.json
  def update
    respond_to do |format|
      if @tour_program.update(tour_program_params)
        format.html { redirect_to @tour_program, notice: 'Tour program was successfully updated.' }
        format.json { render :show, status: :ok, location: @tour_program }
      else
        format.html { render :edit }
        format.json { render json: @tour_program.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tour_programs/1
  # DELETE /tour_programs/1.json
  def destroy
    @tour_program.destroy
    respond_to do |format|
      format.html { redirect_to tour_programs_url, notice: 'Tour program was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tour_program
      @tour_program = TourProgram.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tour_program_params
      params.require(:tour_program).permit(:title, :program_details)
    end
end
