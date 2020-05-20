class ProgressreportsController < ApplicationController
  before_action :set_progressreport, only: [:show, :update, :destroy]

  # GET /progressreports
  def index
    @progressreports = Progressreport.all

    render json: @progressreports
  end

  # GET /progressreports/1
  def show
    render json: @progressreport
  end

  # POST /progressreports
  def create
    # this will save the progress report and corresponding game at the same time.
    # @progressreport = Progressreport.new(progressreport_params)

    @progressreport = Progressreport.new
    @progressreport.date = params[:progressreport][:date]
    @progressreport.time_earned = params[:progressreport][:time_earned]
    @progressreport.user_id = params[:progressreport][:user_id]


    if @progressreport.save
      # now it is save to create the underlying game object in the database
      puts 'Progress Report Saved - Now saving the game.'
      @game = Game.new
      @game.date = params[:progressreport][:date]
      @game.num_correct = params[:progressreport][:num_correct]
      @game.num_wrong = params[:progressreport][:num_wrong]
      @game.status ='complete'
      @game.progressreport_id = @progressreport.id
      
      if @game.save
        
        render json: @progressreport, status: :created, location: @progressreport
        puts 'Created the progress report and game record in the database'
      else
        render json: @game.error, status: unprocessable_entity
      end

    else
      render json: @progressreport.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /progressreports/1
  def update
    if @progressreport.update(progressreport_params)
      render json: @progressreport
    else
      render json: @progressreport.errors, status: :unprocessable_entity
    end
  end

  # DELETE /progressreports/1
  def destroy
    @progressreport.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_progressreport
      @progressreport = Progressreport.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def progressreport_params
      params.require(:progressreport).permit(:date, :time_earned, :user_id, :num_correct, :num_wrong)
    end
end
