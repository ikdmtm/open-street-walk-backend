class HomeController < ApplicationController
    before_action :authenticate_user!, {only: [:index]}

  def index
    render json: { message: 'hello' }
  end
end
