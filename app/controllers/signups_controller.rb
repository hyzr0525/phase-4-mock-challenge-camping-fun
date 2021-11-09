class SignupsController < ApplicationController



    def create
        signup = Signup.create(signup_params)
        if signup.valid?
            render json: signup
        else
            render json: signup.errors.full_messages, status: :unprocessable_entity
        end
    end

    private

    def signup_params
        params.permit(:time, :camper_id, :activity_id)
    end

end
