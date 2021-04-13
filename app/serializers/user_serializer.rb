class UserSerializer < ActiveModel::Serializer
  # has_many :tickets
  attributes :id, :credit, :email, :passphrase
end
