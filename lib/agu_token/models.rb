# frozen_string_literal: true

module AguToken
  [AguToken::Internal::Type::BaseModel, *AguToken::Internal::Type::BaseModel.subclasses].each do |cls|
    cls.define_sorbet_constant!(:OrHash) { T.type_alias { T.any(cls, AguToken::Internal::AnyHash) } }
  end

  AguToken::Internal::Util.walk_namespaces(AguToken::Models).each do |mod|
    case mod
    in AguToken::Internal::Type::Enum | AguToken::Internal::Type::Union
      mod.constants.each do |name|
        case mod.const_get(name)
        in true | false
          mod.define_sorbet_constant!(:TaggedBoolean) { T.type_alias { T::Boolean } }
          mod.define_sorbet_constant!(:OrBoolean) { T.type_alias { T::Boolean } }
        in Integer
          mod.define_sorbet_constant!(:TaggedInteger) { T.type_alias { Integer } }
          mod.define_sorbet_constant!(:OrInteger) { T.type_alias { Integer } }
        in Float
          mod.define_sorbet_constant!(:TaggedFloat) { T.type_alias { Float } }
          mod.define_sorbet_constant!(:OrFloat) { T.type_alias { Float } }
        in Symbol
          mod.define_sorbet_constant!(:TaggedSymbol) { T.type_alias { Symbol } }
          mod.define_sorbet_constant!(:OrSymbol) { T.type_alias { T.any(Symbol, String) } }
        else
        end
      end
    else
    end
  end

  AguToken::Internal::Util.walk_namespaces(AguToken::Models)
                          .lazy
                          .grep(AguToken::Internal::Type::Union)
                          .each do |mod|
    const = :Variants
    next if mod.sorbet_constant_defined?(const)

    mod.define_sorbet_constant!(const) { T.type_alias { mod.to_sorbet_type } }
  end

  Category = AguToken::Models::Category

  Order = AguToken::Models::Order

  PetAPI = AguToken::Models::PetAPI

  PetCreateParams = AguToken::Models::PetCreateParams

  PetDeleteParams = AguToken::Models::PetDeleteParams

  PetFindByStatusParams = AguToken::Models::PetFindByStatusParams

  PetFindByTagsParams = AguToken::Models::PetFindByTagsParams

  PetRetrieveParams = AguToken::Models::PetRetrieveParams

  PetUpdateByIDParams = AguToken::Models::PetUpdateByIDParams

  PetUpdateParams = AguToken::Models::PetUpdateParams

  PetUploadImageParams = AguToken::Models::PetUploadImageParams

  Store = AguToken::Models::Store

  StoreListInventoryParams = AguToken::Models::StoreListInventoryParams

  UserAPI = AguToken::Models::UserAPI

  UserCreateParams = AguToken::Models::UserCreateParams

  UserCreateWithListParams = AguToken::Models::UserCreateWithListParams

  UserDeleteParams = AguToken::Models::UserDeleteParams

  UserLoginParams = AguToken::Models::UserLoginParams

  UserLogoutParams = AguToken::Models::UserLogoutParams

  UserRetrieveParams = AguToken::Models::UserRetrieveParams

  UserUpdateParams = AguToken::Models::UserUpdateParams
end
