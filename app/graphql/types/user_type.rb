module Types
  class UserType < Types::BaseObject
    field :id, ID, null: false
    field :first_name, String, null: false
    field :last_name, String, null: false
    field :phone_number, String, null: true
    field :email, String, null: false
    field :emergency_contact_name, String, null: true
    field :emergency_contact_phone_number, String, null: true
    field :google_uid, String, null: false
  end
end
