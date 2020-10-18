# typed: true
# frozen_string_literal: true

# Displays the list of collections to the user
class DashboardsController < ApplicationController
  def show
    @collections = authorized_scope(Collection.all)
  end
end
