module Api
  module V1
    class PugglesController < ApplicationController
      before_action :set_puggle, only: [:show, :update, :destroy]

      # GET /puggles
      def index
        @puggles = Puggle.all

        render json: @puggles
      end

      # GET /puggles/1
      def show
        render json: @puggle
      end

      # POST /puggles
      def create
        @puggle = Puggle.new(puggle_params)

        if @puggle.save
          render json: @puggle, status: :created, location: @puggle
        else
          render json: @puggle.errors, status: :unprocessable_entity
        end
      end

      # PATCH/PUT /puggles/1
      def update
        if @puggle.update(puggle_params)
          render json: @puggle
        else
          render json: @puggle.errors, status: :unprocessable_entity
        end
      end

      # DELETE /puggles/1
      def destroy
        @puggle.destroy
      end

      private
        # Use callbacks to share common setup or constraints between actions.
        def set_puggle
          @puggle = Puggle.find(params[:id])
        end

        # Only allow a trusted parameter "white list" through.
        def puggle_params
          params.require(:puggle).permit(:name, :color, :build, :temperament)
        end
    end
  end
end
