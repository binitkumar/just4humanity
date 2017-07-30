class VisitorsController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  def index
    @pages = Page.where.not(reviewed_on: nil)
  end

  def dashboard
    @topics = Topic.where(status: 'In Discussion')
  end
end
