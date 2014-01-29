class WelcomeController < ApplicationController
  def index
    redirect_to new_form_path
  end
end
