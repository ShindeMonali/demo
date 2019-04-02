class UserController < ApplicationController
    def index
        @user = User.all
    end

    def new
        @user = User.new
    end

    def edit
       # render plain: params.inspect
        @user = User.find(params[:id])
    end
    
    def create
    	
	    @user = User.new(user_params)
	 
	    if @user.save
            redirect_to @user
        else
	    render 'welcome/index'
        end
	  
    end

    def show
        #render plain: params.inspect
        @user = User.find(params[:id])  
    end

    def update
        #render plain: @user.inspect
        @user = User.find(params[:id])
        if @user.update(user_params)
            redirect_to @user
        else 
            render 'edit'
        end
    end

    def destroy
        @user = User.find(params[:id])
        @user.destroy
        redirect_to user_index_path
    end

    private
    def user_params
    	params.require(:user).permit(:id, :Firstname, :Lastname, :City)
    end
end