# encoding: UTF-8
class ApplicationController < ActionController::Base

  protect_from_forgery

  protected

  def authenticate
    if !session[:logged].nil?
      true
    else
      redirect_to new_session_path
    end
  end

  def authenticate_administrador
    if !session[:logged].nil? and session[:logged].tipo == '1'
      true
    else
      redirect_to buscas_path
    end
  end

end
