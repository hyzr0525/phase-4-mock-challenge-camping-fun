class ActivitiesController < ApplicationController

    def index
        activities = Activity.all
        render json: activities
    end

    def show
        activity = Activity.find_by(id: params[:id])
        if activity
        render json: activity
        else
        render json: {error: "Activity not found"}, status: :not_found
        end
    end

    def destroy
        activity = Activity.find_by(id: params[:id])
        if activity
        activity.destroy
        else
        render json: {error: "Activity not found"}, status: :not_found
        end
    end

    private

    def activity_params
        params.permit(:id, :name, :difficulty)
    end
end
