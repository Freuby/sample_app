class MicropostsController < ApplicationController
  before_filter :authenticate, :only => [:new, :create, :destroy]
  before_filter :authorized_user, :only => :destroy

  def new
    @micropost = Micropost.new
    @titre = "Nouveau Post"
  end

  def create
    @micropost  = current_user.microposts.build(micropost_params)
    if @micropost.save
      flash[:success] = "Micropost créé!"
      redirect_to root_path
    else
      @feed_items = []
      render 'pages/home'
    end
  end

  def destroy
    @micropost.destroy
    redirect_back_or root_path
  end

  private

    def micropost_params
        params.require(:micropost).permit(:content)
    end

    def authorized_user
      @micropost = Micropost.find(params[:id])
      redirect_to root_path unless current_user?(@micropost.user)
    end
end
