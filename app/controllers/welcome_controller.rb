class WelcomeController < ApplicationController
  def index
    @page_title = 'Home'; 
  end

  def about
    @page_title = 'About Us';
  end

  def contact
    @page_title = 'Contact Us';
  end

  def faq
    @page_title = 'Frequently Asked Questions';
  end

  def pricing
    @page_title = 'Pricing';
  end

  def features
    @page_title = 'Features';
  end
end
