class UserSerializer < ActiveModel::Serializer
  attributes :id, :credit, :email, :passphrase
end
