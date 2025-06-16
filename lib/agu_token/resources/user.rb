# frozen_string_literal: true

module AguToken
  module Resources
    class User
      # This can only be done by the logged in user.
      #
      # @overload create(id: nil, email: nil, first_name: nil, last_name: nil, password: nil, phone: nil, username: nil, user_status: nil, request_options: {})
      #
      # @param id [Integer]
      #
      # @param email [String]
      #
      # @param first_name [String]
      #
      # @param last_name [String]
      #
      # @param password [String]
      #
      # @param phone [String]
      #
      # @param username [String]
      #
      # @param user_status [Integer] User Status
      #
      # @param request_options [AguToken::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [AguToken::Models::UserAPI]
      #
      # @see AguToken::Models::UserCreateParams
      def create(params = {})
        parsed, options = AguToken::UserCreateParams.dump_request(params)
        @client.request(method: :post, path: "user", body: parsed, model: AguToken::UserAPI, options: options)
      end

      # Get user by user name
      #
      # @overload retrieve(username, request_options: {})
      #
      # @param username [String] The name that needs to be fetched. Use user1 for testing.
      #
      # @param request_options [AguToken::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [AguToken::Models::UserAPI]
      #
      # @see AguToken::Models::UserRetrieveParams
      def retrieve(username, params = {})
        @client.request(
          method: :get,
          path: ["user/%1$s", username],
          model: AguToken::UserAPI,
          options: params[:request_options]
        )
      end

      # This can only be done by the logged in user.
      #
      # @overload update(existing_username, id: nil, email: nil, first_name: nil, last_name: nil, password: nil, phone: nil, username: nil, user_status: nil, request_options: {})
      #
      # @param existing_username [String] The username that needs to be replaced
      #
      # @param id [Integer]
      #
      # @param email [String]
      #
      # @param first_name [String]
      #
      # @param last_name [String]
      #
      # @param password [String]
      #
      # @param phone [String]
      #
      # @param username [String]
      #
      # @param user_status [Integer] User Status
      #
      # @param request_options [AguToken::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see AguToken::Models::UserUpdateParams
      def update(existing_username, params = {})
        parsed, options = AguToken::UserUpdateParams.dump_request(params)
        @client.request(
          method: :put,
          path: ["user/%1$s", existing_username],
          body: parsed,
          model: NilClass,
          options: options
        )
      end

      # This can only be done by the logged in user.
      #
      # @overload delete(username, request_options: {})
      #
      # @param username [String] The name that needs to be deleted
      #
      # @param request_options [AguToken::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see AguToken::Models::UserDeleteParams
      def delete(username, params = {})
        @client.request(
          method: :delete,
          path: ["user/%1$s", username],
          model: NilClass,
          options: params[:request_options]
        )
      end

      # Creates list of users with given input array
      #
      # @overload create_with_list(items: nil, request_options: {})
      #
      # @param items [Array<AguToken::Models::UserAPI>]
      # @param request_options [AguToken::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [AguToken::Models::UserAPI]
      #
      # @see AguToken::Models::UserCreateWithListParams
      def create_with_list(params = {})
        parsed, options = AguToken::UserCreateWithListParams.dump_request(params)
        @client.request(
          method: :post,
          path: "user/createWithList",
          body: parsed[:items],
          model: AguToken::UserAPI,
          options: options
        )
      end

      # Logs user into the system
      #
      # @overload login(password: nil, username: nil, request_options: {})
      #
      # @param password [String] The password for login in clear text
      #
      # @param username [String] The user name for login
      #
      # @param request_options [AguToken::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [String]
      #
      # @see AguToken::Models::UserLoginParams
      def login(params = {})
        parsed, options = AguToken::UserLoginParams.dump_request(params)
        @client.request(method: :get, path: "user/login", query: parsed, model: String, options: options)
      end

      # Logs out current logged in user session
      #
      # @overload logout(request_options: {})
      #
      # @param request_options [AguToken::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see AguToken::Models::UserLogoutParams
      def logout(params = {})
        @client.request(method: :get, path: "user/logout", model: NilClass, options: params[:request_options])
      end

      # @api private
      #
      # @param client [AguToken::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
