class Video
  include Mongoid::Document
  field :title
  field :published_at, :type => Date
  field :seconds, :type => Integer
  field :note
  field :comments_count, :type => Integer, :default => 0
  field :created_at, :type => Date, :null => false
  field :updated_at, :type => Date, :null => false
  field :play_url
  field :img_url
  field :uploader
  field :source_site
  field :status
end
