class ActivitiesController < ApplicationController
  before_action :set_activity, only: %i[ show edit update destroy ]
  before_action :authenticate_ajk!, except: [:index, :show]
  before_action :correct_user, only: [:edit,:update,:destroy]

  # GET /activities or /activities.json
  def index
    @activities = Activity.all
    @kariahs = @activities.kariahs
  end

  # GET /activities/1 or /activities/1.json
  def show
    @user = User.includes(registrations: :activity).find(params[:id])
  end

  # GET /activities/new
  def new
    #@activity = Activity.new (was)
    @activity = current_ajk.activity.build
  end

  # GET /activities/1/edit
  def edit
  end

  # POST /activities or /activities.json
  def create
    #@activity = Activity.new(activity_params)
    @activity = current_ajk.activity.build(activity_params)
    respond_to do |format|
      if @activity.save
        format.html { redirect_to activity_url(@activity), notice: "Activity was successfully created." }
        format.json { render :show, status: :created, location: @activity }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @activity.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /activities/1 or /activities/1.json
  def update
    respond_to do |format| 
      if @activity.update(activity_params)
        format.html { redirect_to activity_url(@activity), notice: "Activity was successfully updated." }
        format.json { render :show, status: :ok, location: @activity }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @activity.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /activities/1 or /activities/1.json
  def destroy
    @activity.destroy

    respond_to do |format|
      format.html { redirect_to activities_url, notice: "Activity was successfully destroyed." }
      format.json { head :no_content }
    end
  end
  #check if the user is authenticate
  def correct_user
    @friend=current_ajk.activity.find_by(id: params[:id])
    redirect_to activity_path, notice: "Not Autherize to edit this friends" if @friend.nil?
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_activity
      @activity = Activity.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def activity_params
      params.require(:activity).permit(:activity_tittle, :activity_date, :activity_time, :activity_type, :registration_fee, :ajk_id)
    end
end
