# frozen_string_literal: true

module Api
  module V1
    class NewsController < ApplicationController
      before_action :set_news, only: %i[show update destroy]

      def index
        @user = User.find(params[:user_id])
        @news = News.where(user_id: @user.id)
        render json: @news
      end

      def new
        @news = News.new
        @user = current_user
        render json: @news
      end

      def edit
        @news = current_user.news.find(:id)
      end

      def show
        @news = News.find(params[:id])
      end

      def create
        @news = current_user.news.build(news_params)

        if @news.save
          redirect_to news_path(@news)
        else
          render "new"
        end
      end

      def update
        respond_to do |format|
          if @news.update(news_params)
            format.html { redirect_to @news, notice: "News was successfully updated." }
            format.json { render :show, status: :ok, location: @news }
          else
            format.html { render :edit }
            format.json { render json: @news.errors, status: :unprocessable_entity }
          end
        end
      end

      def destroy
        @news.destroy
        redirect_to @news, notice: "News was successfully destroyed."
      end

      private

      def set_news
        @news = News.find(params[:id])
      end

      def news_params
        params.require(:news).permit(
          :headline,
          :user_id,
          :announcement,
          :text,
          :publication
        )
      end
    end
  end
end
