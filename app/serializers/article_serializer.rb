class ArticleSerializer < ActiveModel::Serializer
  attributes :id, :content
  # belongs_to :topic
end
