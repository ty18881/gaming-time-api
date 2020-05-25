class WelcomeController < ApplicationController
    def index
        render json: {status: 200, message: 'Gaming Time API'}
    end
end
