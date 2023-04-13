Rails.application.routes.draw do
  post "/onyva", to: "graphql#execute"

  end

