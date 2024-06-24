class Users::RegistrationsController < Devise::RegistrationsController
  def create
    super do
      refer resource if resource.persisted?
    end
  end
end