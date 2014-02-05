class StaticPagesController < ApplicationController
  def home
	@topics = Topic.all
  end

  def about
  end
end
