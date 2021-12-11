class BirdsController < ApplicationController
    def index
        render json: Bird.all   
    end

    def show
        bird = Bird.find(params[:id])
        if bird
            render json: bird
        else
            render json: {error: "Bird not found"}, status: :not_found
        end
    end
end
