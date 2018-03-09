class TimeSlotsController < ApplicationController
  @pole_ids = { "upstairs_main" => 0, "upstairs_secondary" => 1, "downstairs_one" => 2, "downstairs_two" => 3, "downstairs_booth" => 4, "downstairs_bar" => 5 }


  before_action :set_time_slot, only: [:show, :edit, :update, :destroy]

  # GET /time_slots
  # GET /time_slots.json
  def index
    @time_slots = TimeSlot.all
  end

  # GET /time_slots/1
  # GET /time_slots/1.json
  def show
  end

  # GET /time_slots/new
  def new
    @time_slot = TimeSlot.new
  end

  # GET /time_slots/1/edit
  def edit
  end

  # POST /time_slots
  # POST /time_slots.json
  def create
    @time_slot = TimeSlot.new(time_slot_params)
    @dancer_strings = time_slot_pole_array

    @dancer_strings.each do |str|
      @time_slot.dancers << Dancer.create(fake_name: str)
    end



    respond_to do |format|
      if @time_slot.save
        format.html { redirect_to @time_slot, notice: 'Time slot was successfully created.' }
        format.json { render :show, status: :created, location: @time_slot }
      else
        format.html { render :new }
        format.json { render json: @time_slot.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /time_slots/1
  # PATCH/PUT /time_slots/1.json
  def update
    respond_to do |format|
      if @time_slot.update(time_slot_params)
        format.html { redirect_to @time_slot, notice: 'Time slot was successfully updated.' }
        format.json { render :show, status: :ok, location: @time_slot }
      else
        format.html { render :edit }
        format.json { render json: @time_slot.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /time_slots/1
  # DELETE /time_slots/1.json
  def destroy
    @time_slot.destroy
    respond_to do |format|
      format.html { redirect_to time_slots_url, notice: 'Time slot was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_time_slot
      @time_slot = TimeSlot.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def time_slot_params
      params.permit(:time, :poles)
    end

    def time_slot_pole_array
      # this does not seem to work....
      # Params should be time:datetime, poles : { "upstairs_main" => "<fake_name>", ... }
      @poles = params[:poles]
      @dancer_strings = ["", "", "", "", "", ""]
      @poles.keys.each do |key|
         @dancer_strings[@pole_ids[key]] = @poles[key]
      end
      return @dancer_strings

  
    end

    

end
