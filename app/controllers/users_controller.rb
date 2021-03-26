class UsersController < ApplicationController

    def login
        @user = User.find_by(username: params[:username])
        if @user && @user.authenticate(params[:password])
            render json: @user
        else
            render json: ["Incorrect username or password"]
        end
    end

    def create_account
        @user = User.create(username: params[:username], password: params[:password], avatar: params[:avatar])
        if @user.valid?
            render json: @user
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
