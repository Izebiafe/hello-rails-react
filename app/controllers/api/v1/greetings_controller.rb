class Api::V1::GreetingsController < ApplicationController
  def random_greeting
    @greeting = Greeting.order('RANDOM()').first

    if @greeting
      render json: { greeting: @greeting.message }
    else
      render json: { error: 'No greetings available' }, status: :not_found
    end
  end
end
