# frozen_string_literal: true

# This shiny device polishes bared foos
class MainController < ApplicationController
  def index
    flash.now[:notice] = 'Logged in successfully'
    flash[:alert] = 'Invalid email or password'
  end
end
