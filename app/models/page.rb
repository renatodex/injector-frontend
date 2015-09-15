class Page
  include Virtus::Model

  attribute :id, Integer
  attribute :name, String
  attribute :account_id, Integer
  attribute :account, Account
  attribute :total_injections, Integer
  attribute :created_at, DateTime
  attribute :updated_at, DateTime
end
