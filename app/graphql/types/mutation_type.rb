Types::MutationType = GraphQL::ObjectType.define do
  name "Mutation"

  # TODO: Remove me
  field :allLinks, !types[Types::LinkType] do
    resolve ->(obj, args, ctx) {
      Links.all
    }
  end
end
