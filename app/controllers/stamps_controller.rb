class StampsController < ApplicationController
  before_action :authenticate_user!

  def index
    if current_user.stamps.length == 0
      pl = ["受付","一階","二階","三階","三階VR"]
      for n in 0..4 do
        stamp = Stamp.new
        stamp = current_user.stamps.new
        stamp.place = pl[n]
        stamp.save!
      end
    end
  	@stamps = current_user.stamps
  end

  def create
  # 	pl = ["アトリウム","階段","二階右","二階左"]
  # 	for n in 0..3 do
  # 		stamp = Stamp.new
  # 		stamp = current_user.stamps.new
  # 		stamp.place = pl[n]
  # 		stamp.save!
	 # end

	redirect_to stamps_url
  end

  def edit
    @stamp = target_stamp params[:id]
  end

  def update
    @stamp = target_stamp params[:id]
    @stamp.update(stamp_params)
    redirect_to stamps_url
  end

  def comp
  end


  private

  	def target_stamp stamp_id
      current_user.stamps.find_by(id: stamp_id)
    end

    def stamp_params
      params.require(:stamp).permit(:place, :get)
    end

end
