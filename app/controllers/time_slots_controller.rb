class TimeSlotsController < ApplicationController
  


  before_action :set_time_slot, only: [:show, :edit, :update, :destroy]

  # GET /time_slots
  # GET /time_slots.json
  def index
    @time_slots = []
    # only display time slots in the future
    TimeSlot.find_each do |ts|
      if ts.time >= DateTime.now.new_offset('-00:15')
        puts "compare these two"
        puts ts.time
        puts DateTime.now
        puts ""
        @time_slots << ts
      end
    end

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
    @dancers = @time_slot.dancers

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
      format.json { head :no_content, message: "Success" }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_time_slot
      @time_slot = TimeSlot.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def time_slot_params
      params.permit(:time_slot, :upstairs_main, :upstairs_secondary, :downstairs_one, :downstairs_two, :downstairs_booth, :downstairs_bar, :time)
    end

    # def refresh_time_slots
    #   @time_slots = TimeSlot.all( :conditions => ["time >= :now", { :now => DateTime.now }])
    #   # Client.all(:conditions =>
    #   #   ["created_at >= :start_date AND created_at <= :end_date",
    #   #      { :start_date => params[:start_date], :end_date => params[:end_date] }])
    # end
    

end
