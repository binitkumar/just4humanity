class DiscussionsController < ApplicationController
  before_action :authenticate_user!

  def index
    @topics = Topic.where(" closing_time > ? and status = ?", Time.now, 'In Discussion')
    render template: 'visitors/dashboard'
  end

  def pending
    @topics = Topic.where(" closing_time <= ? and status = ?", Time.now, 'In Discussion').select{|top| top.page.nil? }
    render template: 'visitors/dashboard'
  end

  def in_review
    @topics = Topic.where(" closing_time <= ? and status = ?", Time.now, 'In Discussion').select{|top| top.page && top.page.reviewed_on.nil? }
    render template: 'visitors/dashboard'
  end
end
