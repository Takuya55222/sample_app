class SessionsController < ApplicationController
  
  # GET /login
  def new
    # × @sessiom = Sessiom.new
    # ◯ scope: :session + url: login_path
  end
  
  # POST /login
  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      # success 
      #log_in (@user)
      log_in user
      params[:session][:remember_me] == '1' ? remember(user) : forget(user)
      redirect_to user
      
    else
      flash.now[:danger] = 'emailとpasswordが無効です' # 本当は正しくない
      #failure
      render('new')
      #redirect_to  GET /users/1 　=> show template
      #render       ↑ここが無くて　=> render 'new'(これは０回目になる)
      
    end
  end
  
  
  
  
  def destroy
    log_out if logged_in?
    redirect_to root_url
  end
end
