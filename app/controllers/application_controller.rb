class ApplicationController < ActionController::API
  # https://github.com/sferik/rails_admin/issues/1996
  include ::ActionController::Flash
  include ::ActionView::Layouts
  include ::ActionController::ImplicitRender
  include ::ActionController::Helpers
  include ::ActionController::MimeResponds
  include ::ActionController::RequestForgeryProtection
  # CanCan https://github.com/ryanb/cancan/wiki/authorizing-controller-actions
  include ::ActionController::Base
end
