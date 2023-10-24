class GreetingsController < ApplicationController
    def index
        @random_greeting = Greeting.order('RANDOM()').first
        respond_to do |format|
         format.render json: { greeting: @random_greeting.message }
        end
    end
end
