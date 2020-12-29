class UsersController < ApplicationController
  def show
    user = User.find(params[:id])
    @prototypes = user.prototypes
    @name       = user.name
    @occupation = user.occupation
    @position   =user.position
  end
end