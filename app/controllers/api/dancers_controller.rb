module Api
  class DancersController < ApplicationController
    before_action :set_dancer, only: [:show, :edit, :update, :destroy]

    #POST /dancers/arrival
    def arrival
      @girl = Dancer.find_or_create_by(name: params[:name] )
    
      respond_to do |format|
        if @girl.update
          format.html { redirect_to @dancer, notice: 'Dancer was successfully updated.' }
          format.json { render :show, status: :ok, location: @dancer }
        else
          format.html { render :edit }
          format.json { render json: @dancer.errors, status: :unprocessable_entity }
        end
      end
    end
    def departure
      @girl = Dancer.find_or_create_by(name: params[:name])
      @girl.present = false
    end


    # GET /dancers
    # GET /dancers.json
    def index
      @dancers = Dancer.all
    end

    # GET /dancers/1
    # GET /dancers/1.json
    def show
    end

    # GET /dancers/new
    def new
      @dancer = Dancer.new
    end

    # GET /dancers/1/edit
    def edit
    end

    # POST /dancers
    # POST /dancers.json
    def create
      @dancer = Dancer.new(dancer_params)

      respond_to do |format|
        if @dancer.save
          format.html { redirect_to @dancer, notice: 'Dancer was successfully created.' }
          format.json { render :show, status: :created, location: @dancer }
        else
          format.html { render :new }
          format.json { render json: @dancer.errors, status: :unprocessable_entity }
        end
      end
    end

    # PATCH/PUT /dancers/1
    # PATCH/PUT /dancers/1.json
    def update
      respond_to do |format|
        if @dancer.update(dancer_params)
          format.html { redirect_to @dancer, notice: 'Dancer was successfully updated.' }
          format.json { render :show, status: :ok, location: @dancer }
        else
          format.html { render :edit }
          format.json { render json: @dancer.errors, status: :unprocessable_entity }
        end
      end
    end

    # DELETE /dancers/1
    # DELETE /dancers/1.json
    def destroy
      @success = "success"
      @failure = "failure"
      if @dancer.destroy
        json_response(@success)
      else
        json_response(@failure)
      end

    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_dancer
        @dancer = Dancer.find(params[:id])
      end

      # Never trust parameters from the scary internet, only allow the white list through.
      def dancer_params
        params.require(:dancer).permit(:name)
      end
  end
end