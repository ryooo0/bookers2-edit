class RelationshipsController < ApplicationController
  
  def index
  end
  
  def create
    redirect_back(fallback_location: root_path)
  end
  
  def destroy
    redirect_back(fallback_location: root_path)
  end
  
end
