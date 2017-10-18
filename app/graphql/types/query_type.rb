Types::QueryType = GraphQL::ObjectType.define do
  name "Query"
  # Add root-level fields here.
  # They will be entry points for queries on your schema.

  # TODO: remove me
  field :allLinks, !types[Types::LinkType] do
    description "All links"
    resolve ->(obj, args, ctx) {
      Link.all
    }
  end
end
