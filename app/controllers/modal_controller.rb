class ModalController < ApplicationController
  def new
    respond_to do |format|
      format.turbo_stream
    end
  end

  def create
  end
end
