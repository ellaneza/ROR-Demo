class MenusController < ApplicationController
  def index
  @menus = if params[:keywords]
                 Menu.where('name ilike ?',"%#{params[:keywords]}%")
               else
                 []
               end
  end
end
