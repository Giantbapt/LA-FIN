class PagesController < ApplicationController
  skip_before_action :authenticate_user!

  def home
  	@portraits = Portrait.all
 #  	respond_to do |format|
 #    	format.js
	# end
  end

  def pourquoi
  end
  def seduction
  	
  end
  def hommage
  	
  end

  def installationdanslaville
  	
  end

  def lepouvoirdesclones
  	
  end
  def remerciements
  end

  def jeanpierrechebassier
  end
end
