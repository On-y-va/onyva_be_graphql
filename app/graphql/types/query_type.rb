module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    field :all_users, [Types::UserType], null: false
    field :one_user, Types::UserType, null: false do
      argument :id, ID, required: true
    end

    def all_users
      User.all
    end
    
    def one_user(id:)
      User.find(id)
    end
  end
end
