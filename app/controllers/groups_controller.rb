class GroupsController < ApplicationController
  before_action :set_group, only: %i[ show edit update destroy ]

  # This controller’s only function is to provide a direct route from Rails to React, 
  # which is why we’re only setting the index method.
  # You’ll also need to empty the index.html.erb file within the app/views/ folder 
  # we don’t want any of the Rails web content to be rendered. 
  # It’s a trick we can use to force Rails to exhibit React code only.
  def index; end
end
