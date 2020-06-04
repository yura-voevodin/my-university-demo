class PagesController < ApplicationController

  def about
    render "pages/about"
  end

  def contacts
    render "pages/contacts"
  end

  def privacy_policy
    render "pages/privacy-policy"
  end

  def terms_of_service
    render "pages/terms-of-service"
  end
end
