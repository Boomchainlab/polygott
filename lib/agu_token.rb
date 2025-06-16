# frozen_string_literal: true

# Standard libraries.
# rubocop:disable Lint/RedundantRequireStatement
require "English"
require "cgi"
require "date"
require "erb"
require "etc"
require "json"
require "net/http"
require "pathname"
require "rbconfig"
require "securerandom"
require "set"
require "stringio"
require "time"
require "uri"
# rubocop:enable Lint/RedundantRequireStatement

# We already ship the preferred sorbet manifests in the package itself.
# `tapioca` currently does not offer us a way to opt out of unnecessary compilation.
if Object.const_defined?(:Tapioca) &&
   caller.chain([$PROGRAM_NAME]).chain(ARGV).any?(/tapioca/) &&
   ARGV.none?(/dsl/)
  return
end

# Gems.
require "connection_pool"

# Package files.
require_relative "agu_token/version"
require_relative "agu_token/internal/util"
require_relative "agu_token/internal/type/converter"
require_relative "agu_token/internal/type/unknown"
require_relative "agu_token/internal/type/boolean"
require_relative "agu_token/internal/type/file_input"
require_relative "agu_token/internal/type/enum"
require_relative "agu_token/internal/type/union"
require_relative "agu_token/internal/type/array_of"
require_relative "agu_token/internal/type/hash_of"
require_relative "agu_token/internal/type/base_model"
require_relative "agu_token/internal/type/base_page"
require_relative "agu_token/internal/type/request_parameters"
require_relative "agu_token/internal"
require_relative "agu_token/request_options"
require_relative "agu_token/file_part"
require_relative "agu_token/errors"
require_relative "agu_token/internal/transport/base_client"
require_relative "agu_token/internal/transport/pooled_net_requester"
require_relative "agu_token/client"
require_relative "agu_token/models/pet"
require_relative "agu_token/models/order"
require_relative "agu_token/models/user"
require_relative "agu_token/models/category"
require_relative "agu_token/models/pet_create_params"
require_relative "agu_token/models/pet_delete_params"
require_relative "agu_token/models/pet_find_by_status_params"
require_relative "agu_token/models/pet_find_by_status_response"
require_relative "agu_token/models/pet_find_by_tags_params"
require_relative "agu_token/models/pet_find_by_tags_response"
require_relative "agu_token/models/pet_retrieve_params"
require_relative "agu_token/models/pet_update_by_id_params"
require_relative "agu_token/models/pet_update_params"
require_relative "agu_token/models/pet_upload_image_params"
require_relative "agu_token/models/pet_upload_image_response"
require_relative "agu_token/models/store/order_create_params"
require_relative "agu_token/models/store/order_delete_params"
require_relative "agu_token/models/store/order_retrieve_params"
require_relative "agu_token/models/store_list_inventory_params"
require_relative "agu_token/models/store_list_inventory_response"
require_relative "agu_token/models/user_create_params"
require_relative "agu_token/models/user_create_with_list_params"
require_relative "agu_token/models/user_delete_params"
require_relative "agu_token/models/user_login_params"
require_relative "agu_token/models/user_login_response"
require_relative "agu_token/models/user_logout_params"
require_relative "agu_token/models/user_retrieve_params"
require_relative "agu_token/models/user_update_params"
require_relative "agu_token/models"
require_relative "agu_token/resources/pet"
require_relative "agu_token/resources/store"
require_relative "agu_token/resources/store/order"
require_relative "agu_token/resources/user"
