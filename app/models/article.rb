class Article < ApplicationRecord
    belongs_to :topic

    def self.articles
        articleArr = {}
        Article.all.each do |article|
            articleArr[article.topic_id] = article.content
        end
        return articleArr
    end
end
