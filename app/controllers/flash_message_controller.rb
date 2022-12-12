# frozen_string_literal: true

class FlashMessageController < ApplicationController
  def create
    respond_to do |format|
      format.html { redirect_to root_path, notice: params[:message] }
      format.turbo_stream { flash.now[:notice] = params[:message] }
    end
  end
end
