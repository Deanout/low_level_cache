class PagesController < ApplicationController
  def home
    top_3_article_ids = Rails.cache.fetch("top_3_article_ids", expires_in: 1.minutes) do
      Article.top_3.pluck(:id)
    end
    @top_3_articles = Article.find(top_3_article_ids)
  end
end
