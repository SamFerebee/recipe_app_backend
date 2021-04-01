class UsersController < ApplicationController

    def login
        user = User.find_by(username: params[:username])
        if user && user.authenticate(params[:password])
            token = JWT.encode({user_id: user.id}, "secret", "HS256")
            render json: {user: user, token: token}
        else
            render json: ["Incorrect username or password"]
        end
    end

    def create_account
        if params[:password] != params[:confirmation]
            render json: ["Passwords must match"]
        else
            user = User.create(username: params[:username], password: params[:password], avatar: params[:avatar], comment_history: [], liked_recipes: [])
            if user.valid?
                token = JWT.encode({user_id: user.id}, "secret", "HS256")
                render json: {user: user, token: token}
            else
                render json: user.errors.full_messages
            end
        end
    end

    def destroy
        @user = User.find(params[:id])
        @user.destroy
        render json: User.all.pluck(:username)
    end

    def edit_account
        user = User.find(params[:id])
        if(params[:name])
            user.update(username: params[:name])
        end
        if(params[:avatar])
            user.update(avatar: params[:avatar])
        end
        render json: user
    end

    def edit_password
        user = User.find(params[:id])
        if user.password_match?(params[:password], params[:confirmation])
            user.update(password: params[:password])
            render json: true
        else
            render json: ["Your passwords must match"]
        end
    end

    def me
        auth_header = request.headers["Authorization"]
        token = auth_header.split.last
        payload = JWT.decode(token, "secret", true, { algorithm: 'HS256' }).first
        user = User.find_by(id: payload["user_id"])
        if (user)
            render json: user
        else
            render json: ["Error"]
        end
    end

    def check_comment
        user = User.find(params[:id])
        found = user.comment_history.include?(params[:recipe].to_i)
        if found
            render json: false
        else
            render json: true
        end
    end

    def get_favorite
        user = User.find(params[:id])
        found = user.liked_recipes.include?(params[:recipe].to_i)
        if found
            render json: true
        else
            render json: false
        end
    end

    def add_favorite
        user = User.find(params[:user].to_i)
        temp = user.liked_recipes
        temp.push(params[:recipe].to_i)
        user.update(liked_recipes: temp)
        render json: user.liked_recipes
    end

    def remove_favorite
        user = User.find(params[:user].to_i)
        temp = user.liked_recipes
        temp -= [params[:recipe].to_i]
        user.update(liked_recipes: temp)
        render json: user.liked_recipes
    end

end
