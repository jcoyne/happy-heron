# typed: false
# frozen_string_literal: true

# Handles approval
class ReviewsController < ApplicationController
  before_action :authenticate_user!
  verify_authorized

  def create
    work = Work.find(params[:work_id])
    authorize! work, to: :review?
    if params[:state] == 'approve'
      work.begin_deposit!
    else
      work.event_context = { description: params[:reason], user: current_user }
      work.reject!
    end

    redirect_to dashboard_path
  end
end
