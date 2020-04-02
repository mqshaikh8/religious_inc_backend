class ReligionsController < ApplicationController
    def index
        religions = Religion.all
        
        
        render json: religions
    end
    def articles
        articleArr = {}
        Article.all.each do |article|
            articleArr[article.topic_id] = article.content
        end
        render json: articleArr
    end

    def create
    end

end