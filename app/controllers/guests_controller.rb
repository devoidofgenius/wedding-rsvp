class GuestsController < ApplicationController
    before_action :logged_in_user

    def index
        @guest = Guest.new(params[:guest])
        @guests = Guest.all
    end

    def create
        @guest = Guest.create(params[:guest].permit(:ceremony, :reception, :party))
        @guest.user_id = current_user.id if current_user

        if @guest.save
            redirect_to root_path
            flash[:success] = "Thank you for filling out our RSVP."
        else
            redirect_to root_path
            flash[:warning] = "You've already submitted your RSVP."
        end
    end

end
