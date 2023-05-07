class UsersController < ApplicationController

  def show
    @pins = Pin.where(user_id: params[:id]).order(created_at: :desc).with_attached_image
    @pin_urls = @pins.map { |pin| pin.image.present? ? Rails.application.routes.url_helpers.rails_representation_url(pin.image, only_path: true) : nil } 
    render json: { pins: @pins, pin_urls: @pin_urls }, status: :ok
  end
end
