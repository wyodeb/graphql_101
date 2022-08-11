module Mutations
  class BaseMutation < GraphQL::Schema::RelayClassicMutation
    argument_class LinkType::BaseArgument
    field_class LinkType::BaseField
    input_object_class LinkType::BaseInputObject
    object_class LinkType::BaseObject
  end
end
