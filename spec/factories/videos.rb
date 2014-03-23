# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :video do
    sequence(:title)   { |n| "title#{n}" }
    published_at       { Random.rand(1000).days.ago }
    seconds            { Random.rand(10000) }
    sequence(:note)    { |n| "note#{n}" }
    comments_count     { Random.rand(10000) }
    created_at         { Time.now }
    updated_at         { Time.now }
    sequence(play_url) { |n| "wwww.youku.com/videos/#{n}" }
    sequence(img_url)  { |n| "wwww.youku.com/images/#{n}" }
    uploader "uploader"
    source_site "youku"
    status "ok"
  end
end
