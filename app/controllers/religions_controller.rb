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
        religion = Religion.find_by(name:params[:religion])

        category = Category.find_by(name:params[:category],religion_id:religion.id)
        if category == nil
        category = Category.create(name:params[:category],religion_id:religion.id)
        end
       
        topic = Topic.create(name:params[:Topic],category_id:category.id)
        

        article = Article.create(content:params[:Content],topic_id:topic.id)
        

        render json: {Succes:article}
    end

end