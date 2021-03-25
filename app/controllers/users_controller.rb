class UsersController < ApplicationController

    def login
        @user = User.find_by(username: params[:username])
        if @user && @user.authenticate(params[:password])
            session[:user_id] = @user.id
            render json: "true"
        else
            render json: "false"
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

end
