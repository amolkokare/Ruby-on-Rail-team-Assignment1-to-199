class SignupController < ApplicationController
  def index
      @signup = Signup.all
   end
   def show
       @signup = Signup.find(params[:id])
   end
end
