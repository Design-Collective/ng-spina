class ApplicationController < ActionController::API
  #https://github.com/sferik/rails_admin/issues/1996
  include ::ActionController::Flash
  include ::ActionView::Layouts
  include ::ActionController::Helpers
  include ::ActionController::MimeResponds
  include ::ActionController::RequestForgeryProtection
end
