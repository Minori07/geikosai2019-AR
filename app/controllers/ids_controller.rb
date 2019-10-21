class IdsController < ApplicationController
  def index
    @id = Id.all
  end

  def new
    @id = Id.new
  end

  def create
    @id = ids.new id_params
    @id.save!
    redirect_to @id
  end

  def id_params
	params.require(:id).permit(:name)
  end
end
