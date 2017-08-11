class PagesController < ApplicationController
  access user: :all, admin: :all, ta: :all
  def index
    @reservation_details = ReservationDetail.all
  end

  def calendar
  end

  def reservation
    @reservation_detail = ReservationDetail.new
  end
end
