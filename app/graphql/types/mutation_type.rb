Types::MutationType = GraphQL::ObjectType.define do
  name "Mutation"

  # show all links
  field :allLinks, !types[Types::LinkType] do
    resolve ->(obj, args, ctx) {
      Links.all
    }
  end

  # create link
  field :createLink, function: Resolvers::CreateLink.new

  # create user
  field :createUser, function: Resolvers::CreateUser.new
end
