# frozen_string_literal: true

module Api
  module V1
    class FavoritesController < ApplicationController
      before_action :authenticate_request
      before_action :find_news!

      def create
        current_user.favorites.create(news_id: @news.id)
      end

      def destroy
        current_user.favorites.where(news_id: @news.id).destroy_all
      end

      private

      def find_news!
        @news = News.find(params[:news_id])
      end
    end
  end
end
