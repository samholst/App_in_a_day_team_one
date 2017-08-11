class ReservationDetailsController < ApplicationController
    before_action :find_reservation_detail, only: [:destroy]

    def create
        @reservation_detail = ReservationDetail.new(reservation_params)
        @reservation_detail.user_id = current_user.id

        respond_to do |format|
            if @reservation_detail.save
                format.html {redirect_to pages_index_path, notice: "Reserveration confirmed."}
            else
                format.html {redirect_to pages_reservation_path}
            end
        end
    end

    def destroy
        @reservation_detail.destroy
    end



    private

    def reservation_params
        params.require(:reservation_detail).permit(:title, :body)
    end

    def find_reservation_detail
        @reservation_detail = ReservationDetail.find(params[:id])
    end

end
