class PagesController < ApplicationController
# before_filter :authenticate_admin!

  def home
  	success_stories= SuccessStory.all
  	@success_stories_sample = success_stories.sample(3)
  end

  def about
  end

  def contact
  end
end