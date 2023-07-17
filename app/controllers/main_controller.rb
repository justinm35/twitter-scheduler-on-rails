# frozen_string_literal: true

# This shiny device polishes bared foos
class MainController < ApplicationController
  def index
    if session[:user_id]
      @user = User.find(session[:user_id])
    end
  end
end
