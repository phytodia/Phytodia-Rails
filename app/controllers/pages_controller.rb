class PagesController < ApplicationController
  def home
    flash[:notice] = t(:hello_flash)
    @faq = YAML.load_file('config/faq_fr.yml')
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
