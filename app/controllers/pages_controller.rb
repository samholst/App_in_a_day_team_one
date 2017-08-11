class PagesController < ApplicationController
  access user: :all, admin: :all, ta: :all
  def index
  end

  def calendar
  end

  def reservation
  end
end
