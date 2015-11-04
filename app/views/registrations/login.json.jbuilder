json.user do
  json.extract! @user, :auth_token, :firstname, :lastname, :email, :username
end