module LinkType
  class BaseInputObject < GraphQL::Schema::InputObject
    argument_class LinkType::BaseArgument
  end
end
