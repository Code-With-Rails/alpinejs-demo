# frozen_string_literal: true

class ModalController < ApplicationController
  def new
    @user = User.new(name: SecureRandom.hex(5))
    respond_to do |format|
      format.turbo_stream
    end
  end

  def create
    @user = User.new(user_params)
    respond_to do |format|
      format.turbo_stream do
        if @user.save
          redirect_to root_path, notice: "#{@user.name} added"
        else
          render 'new', status: :unprocessable_entity
        end
      end
    end
  end

  private

  def user_params
    params.require(:user).permit(:name)
  end
end
