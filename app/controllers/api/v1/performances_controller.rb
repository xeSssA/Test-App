module Api
  module V1
    class PerformancesController < ApplicationController

      def index
        @performances = Performance.order('created_at')
        render json: @performances, each_serializer: PerformanceSerializer, status: :ok
      end

      def create
        @performance = Performance.new(performance_params)

        if @performance.save
          render json: { status: 'SUCCESS', message: 'Performance is saved', data: @performance }, status: :ok
        else
          render json: { status: 'Error', message: 'Performance is not saved', errors: @performance.errors },
                 status: :unprocessable_entity
        end
      end

      def destroy
        @performance = Performance.find(params[:id])
        @performance.destroy

        render json: { status: 'SUCCESS', message: 'Performance successfully deleted', data: @performance }, status: :ok
      end

      private

      def performance_params
        duration = { duration: params[:starts_at].to_date..params[:ends_at].to_date }
        params.permit(:title).merge(duration)
      end

    end
  end
end
