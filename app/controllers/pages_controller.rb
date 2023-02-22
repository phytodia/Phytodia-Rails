class PagesController < ApplicationController
  def home
    flash[:notice] = t(:hello_flash)
  end

  def plantes
  end
  def analyses
  end
  def cosmetologie
  end
  def marques
  end
  def propos
  end
  def blog
  end
  def contact
  end
end
