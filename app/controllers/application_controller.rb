class ApplicationController < ActionController::API
  before_action :fake_food

  def fake_food
    sleep(1)
  end
end
