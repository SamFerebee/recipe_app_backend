class UsersController < ApplicationController

    def login
        @user = User.find_by(username: params[:username])
        if @user && @user.authenticate(params[:password])
            session[:user_id] = @user.id
            render json: @user.id
        else
            render json: ["Incorrect username or password"]
        end
    end

    def create_account
        @user = User.create(username: params[:username], password: params[:password], avatar: params[:avatar])
        if @user.valid?
            session[:user_id] = @user.id
            render json: @user.id
        else
            render json: @user.errors.full_messages
        end
    end

    def destroy
        @user = User.find(params[:id])
        @user.destroy
        render json: User.all.pluck(:username)
    end

end
