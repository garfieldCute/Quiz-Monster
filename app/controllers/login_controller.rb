class LoginController < ApplicationController
def index
end
def authenticate
 
  if(params[:username]=username and params[:password]=password)
  session[:username]="abc"
  redirect_to :controller=>"quizzes", :action=>"index"    controller with :action=>"EDITABLE"
  else
  session[:username]=nil
  flash[:login]="invalid username or password"
  redirect_to :action=>"index"
  
  end
end