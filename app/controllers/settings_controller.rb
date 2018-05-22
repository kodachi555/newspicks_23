class SettingsController < ApplicationController
  before_filter :authenticate_user!
  before_action :set_user

  def profile
  end

  def mail
  end

  def password
  end

  def subscriptions
  end

  def mute
  end

  def social
  end

  def query
  end

  def newsletters
  end

  def scout
  end

  private
  def set_user
    @user = current_user
  end
end
