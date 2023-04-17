class PinsController < ApplicationController
  before_action :authenticate_user!, {only: [:create, :update, :destroy]}

  def index
    @pins = Pin.with_attached_image
    # 画像のURLをプリロードして取得する
    # @pin_urls = @pins.map { |pin| pin.image.present? ? pin.image.url : nil }
    # Rails.application.routes.url_helpers.rails_representation_url(@user.avatar.variant({}), only_path: true)
    @pin_urls = @pins.map { |pin| pin.image.present? ? Rails.application.routes.url_helpers.rails_representation_url(pin.image, only_path: true) : nil }
    render json: { pins: @pins, pin_urls: @pin_urls }, status: :ok
  end

# pin = current_user.pins.build(pin_params)
  def create
    @pin = Pin.new(pin_params)
    if @pin.save
      render  json: { success: true, pin: @pin, message: "ピンが作成されました" }, status: :created
    else
      render json: { success: false, errors: @pin.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def update
  end

  def destroy
  end

  private
  def pin_params
    params.require(:pin).permit(:title, :lat, :lng, :image).merge(user_id: current_user.id)
  end
end
