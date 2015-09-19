class Injection
  include Virtus::Model

  attribute :id, Integer
  attribute :name, String
  attribute :html, String
  attribute :account, Account
  attribute :account_id, String
  attribute :injection_type_id, Integer
  attribute :injection_type_name, String
  attribute :created_at, DateTime
  attribute :updated_at, DateTime
end
