class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @users = User.all
    @events = @user.events
    @activities = PublicActivity::Activity.order(created_at: :desc).limit(20)
    @attended_event = @user.bookings
    @created_event = @user.events
    @attended_event_count = @user.bookings.count
    @created_event_count = @user.events.count
    @bookings = current_user.bookings
  end

  # POST /users or /users.json
  def create
    @user = User.new(user_params)
    respond_to do |format|
      if @user.save
        # Tell the UserMailer to send a welcome email after save
        UserMailer.with(user: @user).welcome_email.deliver_later
        format.html { redirect_to(@user, notice: 'User was successfully created.') }
        format.json { render json: @user, status: :created, location: @user }
      else
        format.html { render action: 'new' }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

end
