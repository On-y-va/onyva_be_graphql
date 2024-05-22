Rails.application.routes.draw do
  post "/api/v1/onyva", to: "graphql#execute"

  end

