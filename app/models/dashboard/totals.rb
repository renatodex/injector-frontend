module Dashboard
  class Totals
    include Virtus::Model

    attribute :pages, Integer
    attribute :injections, Integer
  end
end
