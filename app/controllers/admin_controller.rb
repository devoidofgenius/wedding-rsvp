class AdminController < ApplicationController
  before_action :logged_in_user, :admin_user, only: [:index]
  helper_method :user_sort_column, :sort_direction, :guest_sort_column

  def index
  end

  def users
    @users = User.order(user_sort_column + " " + sort_direction).paginate(per_page: 2, page: params[:page])
  end

  def posts
    @posts = Post.all.order('created_at DESC')
  end

  def rsvp
    @guests = Guest.order(guest_sort_column + " " + sort_direction)
    
    @count = Array.new

    @guests.each do |guest|
      @count.push(guest.party)
    end

    @total = @count.inject(:+)
  end

  private
    def user_sort_column
      User.column_names.include?(params[:sort]) ? params[:sort] : "last_name"
    end

    def guest_sort_column
      Guest.column_names.include?(params[:sort]) ? params[:sort] : "ceremony"
    end

    def sort_direction
      %w[ASC DESC].include?(params[:direction]) ? params[:direction] : "ASC"
    end

end
