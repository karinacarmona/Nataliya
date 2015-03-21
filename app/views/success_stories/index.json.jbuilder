json.array!(@success_stories) do |success_story|
  json.extract! success_story, :id
  json.url success_story_url(success_story, format: :json)
end
