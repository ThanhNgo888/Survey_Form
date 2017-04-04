class UsersController < ApplicationController
  def index
      #Set session views to zero if it doesn't exist yet.
      session[:view] ||= 0
  end

  def user_survey
      #increment the session views upon submission of the form.
      session[:views] = session[:views] +1
      session[:result] = params[:user]

      #Save success message to flash to show it once
      flash[:success] = "Thanks for submitting this form! You have submitted this form #{session[:views]}time(s)now."

      #To prevent submission of form with page reload
      redirect_to '/users/result'
  end
  def result
      #Save the data to variable accessible in the views.
      @result = session[:result]
  end
end
