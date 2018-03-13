module Api

  class TimeSlotsController < ApplicationController
    
    before_action :set_time_slot, only: [:show, :edit, :update, :destroy]

    # GET /time_slots.json
    def index
      @time_slots = TimeSlot.all
      json_response(@time_slots)
    end

    # GET /time_slots/1.json
    def show
    end

    # POST /time_slots
    # POST /time_slots.json
    # TODO: TEST
    def create
      @time_slot = TimeSlot.new(time_slot_params)

      if @time_slot.save
        json_reponse(@time_slot)
      else
        json_repsponse(@time_slot.errors)
      end
    end

    # PATCH/PUT /time_slots/1.json

    def update
      @dancers = @time_slot.dancers
        if @time_slot.update(time_slot_params)
        json_response(@time_slot)
        else
        json_response(@time_slot.errors)
        end
    end

    # DELETE /time_slots/1.json
    def destroy
      if @time_slot.destroy
        render json: "Time Slot Destroyed", status: :ok
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


      

  end
end