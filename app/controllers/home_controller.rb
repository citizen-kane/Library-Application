class HomeController < ApplicationController
  def index
  	if !session[:user]
  		redirect_to '/signin'
  	end
#  	user = User.find_by_email(params[:session][:email])
	@useremail = current_user[:email]
	#@books = Book.find_by_email(@useremail)  	
	@books = Book.email_search(@useremail)  	
	#Book.search(params[:search])

	#@books = Book.all
  end
end
