module Api
  module V1
    class NewsController < ApplicationController
      # before_action :authenticate_user!, only: [:edit, :update, :new]
      before_action :set_news, only: [:show, :edit, :update, :destroy]

      def index
        @news = News.order('created_at DESC')
        # @user = current_user
      end

      def new
        @news = News.new
        @user = current_user
      end

      def edit;end

      def show
        @news = News.find(params[:id])
      end

      def create
        @news = current_user.news.build(news_params)

        if @news.save
          redirect_to news_path(@news)
        else
          render 'new'
        end
      end

      def update
        respond_to do |format|
          if @news.update(news_params)
            format.html { redirect_to @news, notice: 'News was successfully updated.' }
            format.json { render :show, status: :ok, location: @news }
          else
            format.html { render :edit }
            format.json { render json: @news.errors, status: :unprocessable_entity }
          end
        end
      end

      def destroy
        @news.destroy
        redirect_to @news, notice: 'News was successfully destroyed.'
      end

      private

      def set_news
        @news = News.find(params[:id])
      end

      def news_params
          params.require(:news).permit(:headline, :user_id, :announcement, :text, :publication)
      end
    end
  end
end