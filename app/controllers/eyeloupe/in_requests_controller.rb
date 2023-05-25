# frozen_string_literal: true

module Eyeloupe
  class InRequestsController < ApplicationController

    before_action :set_in_request, only: [:show]

    def index
      @pagy, @requests = pagy(InRequest.all.order(created_at: :desc), items: 50)

      render partial: 'frame' if params[:frame].present?
    end

    def show
    end

    protected

    def set_in_request
      @request = InRequest.find(params[:id])
    end
  end
end
