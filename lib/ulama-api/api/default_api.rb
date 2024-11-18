=begin
#Ulama.io API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 0.1
Contact: support@ulama.io
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.55
=end

module UlamaApi
  class DefaultApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # @param body
    # @param website ID Website
    # @param [Hash] opts the optional parameters
    # @return [User]
    def create_user(body, website, opts = {})
      data, _status_code, _headers = create_user_with_http_info(body, website, opts)
      data
    end

    # @param body
    # @param website ID Website
    # @param [Hash] opts the optional parameters
    # @return [Array<(User, Integer, Hash)>] User data, response status code and response headers
    def create_user_with_http_info(body, website, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DefaultApi.create_user ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling DefaultApi.create_user"
      end
      # verify the required parameter 'website' is set
      if @api_client.config.client_side_validation && website.nil?
        fail ArgumentError, "Missing the required parameter 'website' when calling DefaultApi.create_user"
      end
      # resource path
      local_var_path = '/users'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'website'] = website

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(body)

      return_type = opts[:return_type] || 'User'

      auth_names = opts[:auth_names] || ['apiKey']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DefaultApi#create_user\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # @param body
    # @param website ID Website
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def enroll_user(body, website, opts = {})
      enroll_user_with_http_info(body, website, opts)
      nil
    end

    # @param body
    # @param website ID Website
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def enroll_user_with_http_info(body, website, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DefaultApi.enroll_user ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling DefaultApi.enroll_user"
      end
      # verify the required parameter 'website' is set
      if @api_client.config.client_side_validation && website.nil?
        fail ArgumentError, "Missing the required parameter 'website' when calling DefaultApi.enroll_user"
      end
      # resource path
      local_var_path = '/enroll'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'website'] = website

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(body)

      return_type = opts[:return_type]

      auth_names = opts[:auth_names] || ['apiKey']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DefaultApi#enroll_user\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # @param website ID Website
    # @param time Abandon X at least minutes ago
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :cart Filter by Cart
    # @return [Array<Abandon>]
    def get_abandoned_carts(website, time, opts = {})
      data, _status_code, _headers = get_abandoned_carts_with_http_info(website, time, opts)
      data
    end

    # @param website ID Website
    # @param time Abandon X at least minutes ago
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :cart Filter by Cart
    # @return [Array<(Array<Abandon>, Integer, Hash)>] Array<Abandon> data, response status code and response headers
    def get_abandoned_carts_with_http_info(website, time, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DefaultApi.get_abandoned_carts ...'
      end
      # verify the required parameter 'website' is set
      if @api_client.config.client_side_validation && website.nil?
        fail ArgumentError, "Missing the required parameter 'website' when calling DefaultApi.get_abandoned_carts"
      end
      # verify the required parameter 'time' is set
      if @api_client.config.client_side_validation && time.nil?
        fail ArgumentError, "Missing the required parameter 'time' when calling DefaultApi.get_abandoned_carts"
      end
      # resource path
      local_var_path = '/abandon'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'website'] = website
      query_params[:'time'] = time
      query_params[:'cart'] = opts[:'cart'] if !opts[:'cart'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body]

      return_type = opts[:return_type] || 'Array<Abandon>'

      auth_names = opts[:auth_names] || ['apiKey']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DefaultApi#get_abandoned_carts\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # @param website ID Website
    # @param [Hash] opts the optional parameters
    # @return [Array<Admin>]
    def get_admin_users(website, opts = {})
      data, _status_code, _headers = get_admin_users_with_http_info(website, opts)
      data
    end

    # @param website ID Website
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<Admin>, Integer, Hash)>] Array<Admin> data, response status code and response headers
    def get_admin_users_with_http_info(website, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DefaultApi.get_admin_users ...'
      end
      # verify the required parameter 'website' is set
      if @api_client.config.client_side_validation && website.nil?
        fail ArgumentError, "Missing the required parameter 'website' when calling DefaultApi.get_admin_users"
      end
      # resource path
      local_var_path = '/admin'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'website'] = website

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body]

      return_type = opts[:return_type] || 'Array<Admin>'

      auth_names = opts[:auth_names] || ['apiKey']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DefaultApi#get_admin_users\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # @param [Hash] opts the optional parameters
    # @return [Array<Authoirize>]
    def get_api_key_owner(opts = {})
      data, _status_code, _headers = get_api_key_owner_with_http_info(opts)
      data
    end

    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<Authoirize>, Integer, Hash)>] Array<Authoirize> data, response status code and response headers
    def get_api_key_owner_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DefaultApi.get_api_key_owner ...'
      end
      # resource path
      local_var_path = '/authorize'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body]

      return_type = opts[:return_type] || 'Array<Authoirize>'

      auth_names = opts[:auth_names] || ['apiKey']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DefaultApi#get_api_key_owner\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # @param website ID Website
    # @param [Hash] opts the optional parameters
    # @return [Array<Carts>]
    def get_carts(website, opts = {})
      data, _status_code, _headers = get_carts_with_http_info(website, opts)
      data
    end

    # @param website ID Website
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<Carts>, Integer, Hash)>] Array<Carts> data, response status code and response headers
    def get_carts_with_http_info(website, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DefaultApi.get_carts ...'
      end
      # verify the required parameter 'website' is set
      if @api_client.config.client_side_validation && website.nil?
        fail ArgumentError, "Missing the required parameter 'website' when calling DefaultApi.get_carts"
      end
      # resource path
      local_var_path = '/carts'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'website'] = website

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body]

      return_type = opts[:return_type] || 'Array<Carts>'

      auth_names = opts[:auth_names] || ['apiKey']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DefaultApi#get_carts\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # @param website ID Website
    # @param [Hash] opts the optional parameters
    # @return [Array<Products>]
    def get_courses(website, opts = {})
      data, _status_code, _headers = get_courses_with_http_info(website, opts)
      data
    end

    # @param website ID Website
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<Products>, Integer, Hash)>] Array<Products> data, response status code and response headers
    def get_courses_with_http_info(website, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DefaultApi.get_courses ...'
      end
      # verify the required parameter 'website' is set
      if @api_client.config.client_side_validation && website.nil?
        fail ArgumentError, "Missing the required parameter 'website' when calling DefaultApi.get_courses"
      end
      # resource path
      local_var_path = '/products'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'website'] = website

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body]

      return_type = opts[:return_type] || 'Array<Products>'

      auth_names = opts[:auth_names] || ['apiKey']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DefaultApi#get_courses\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # @param website ID Website
    # @param [Hash] opts the optional parameters
    # @option opts [String] :status Filter by status
    # @option opts [BOOLEAN] :split_name Split Name into First Name and Last Name
    # @return [Array<Orders>]
    def get_orders(website, opts = {})
      data, _status_code, _headers = get_orders_with_http_info(website, opts)
      data
    end

    # @param website ID Website
    # @param [Hash] opts the optional parameters
    # @option opts [String] :status Filter by status
    # @option opts [BOOLEAN] :split_name Split Name into First Name and Last Name
    # @return [Array<(Array<Orders>, Integer, Hash)>] Array<Orders> data, response status code and response headers
    def get_orders_with_http_info(website, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DefaultApi.get_orders ...'
      end
      # verify the required parameter 'website' is set
      if @api_client.config.client_side_validation && website.nil?
        fail ArgumentError, "Missing the required parameter 'website' when calling DefaultApi.get_orders"
      end
      if @api_client.config.client_side_validation && opts[:'status'] && !['new', 'waiting', 'closed', 'trialing', 'canceld'].include?(opts[:'status'])
        fail ArgumentError, 'invalid value for "status", must be one of new, waiting, closed, trialing, canceld'
      end
      # resource path
      local_var_path = '/orders'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'website'] = website
      query_params[:'status'] = opts[:'status'] if !opts[:'status'].nil?
      query_params[:'split_name'] = opts[:'split_name'] if !opts[:'split_name'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body]

      return_type = opts[:return_type] || 'Array<Orders>'

      auth_names = opts[:auth_names] || ['apiKey']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DefaultApi#get_orders\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # @param website ID Website
    # @param [Hash] opts the optional parameters
    # @return [Array<Payments>]
    def get_payments(website, opts = {})
      data, _status_code, _headers = get_payments_with_http_info(website, opts)
      data
    end

    # @param website ID Website
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<Payments>, Integer, Hash)>] Array<Payments> data, response status code and response headers
    def get_payments_with_http_info(website, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DefaultApi.get_payments ...'
      end
      # verify the required parameter 'website' is set
      if @api_client.config.client_side_validation && website.nil?
        fail ArgumentError, "Missing the required parameter 'website' when calling DefaultApi.get_payments"
      end
      # resource path
      local_var_path = '/payments'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'website'] = website

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body]

      return_type = opts[:return_type] || 'Array<Payments>'

      auth_names = opts[:auth_names] || ['apiKey']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DefaultApi#get_payments\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # @param website ID Website
    # @param email Email to search
    # @param [Hash] opts the optional parameters
    # @return [Array<User>]
    def get_user(website, email, opts = {})
      data, _status_code, _headers = get_user_with_http_info(website, email, opts)
      data
    end

    # @param website ID Website
    # @param email Email to search
    # @param [Hash] opts the optional parameters
    # @return [Array<(User, Integer, Hash)>] User data, response status code and response headers
    def get_user_with_http_info(website, email, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DefaultApi.get_user ...'
      end
      # verify the required parameter 'website' is set
      if @api_client.config.client_side_validation && website.nil?
        fail ArgumentError, "Missing the required parameter 'website' when calling DefaultApi.get_user"
      end
      # verify the required parameter 'email' is set
      if @api_client.config.client_side_validation && email.nil?
        fail ArgumentError, "Missing the required parameter 'email' when calling DefaultApi.get_user"
      end
      # resource path
      local_var_path = '/users'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'website'] = website
      query_params[:'email'] = email

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body]

      return_type = opts[:return_type] || 'Array<User>'

      auth_names = opts[:auth_names] || ['apiKey']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DefaultApi#get_user\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get a list of users who reached a percentage of a course
    # @param website ID Website
    # @param percentage Percentage reached
    # @param course ID Course
    # @param [Hash] opts the optional parameters
    # @return [Array<UsersPercentage>]
    def get_users_given_progress_pct(website, percentage, course, opts = {})
      data, _status_code, _headers = get_users_given_progress_pct_with_http_info(website, percentage, course, opts)
      data
    end

    # Get a list of users who reached a percentage of a course
    # @param website ID Website
    # @param percentage Percentage reached
    # @param course ID Course
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<UsersPercentage>, Integer, Hash)>] Array<UsersPercentage> data, response status code and response headers
    def get_users_given_progress_pct_with_http_info(website, percentage, course, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DefaultApi.get_users_given_progress_pct ...'
      end
      # verify the required parameter 'website' is set
      if @api_client.config.client_side_validation && website.nil?
        fail ArgumentError, "Missing the required parameter 'website' when calling DefaultApi.get_users_given_progress_pct"
      end
      # verify the required parameter 'percentage' is set
      if @api_client.config.client_side_validation && percentage.nil?
        fail ArgumentError, "Missing the required parameter 'percentage' when calling DefaultApi.get_users_given_progress_pct"
      end
      # verify the required parameter 'course' is set
      if @api_client.config.client_side_validation && course.nil?
        fail ArgumentError, "Missing the required parameter 'course' when calling DefaultApi.get_users_given_progress_pct"
      end
      # resource path
      local_var_path = '/percentage'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'website'] = website
      query_params[:'percentage'] = percentage
      query_params[:'course'] = course

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body]

      return_type = opts[:return_type] || 'Array<UsersPercentage>'

      auth_names = opts[:auth_names] || ['apiKey']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DefaultApi#get_users_given_progress_pct\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # @param [Hash] opts the optional parameters
    # @return [Array<Websited>]
    def get_websites(opts = {})
      data, _status_code, _headers = get_websites_with_http_info(opts)
      data
    end

    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<Websited>, Integer, Hash)>] Array<Websited> data, response status code and response headers
    def get_websites_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DefaultApi.get_websites ...'
      end
      # resource path
      local_var_path = '/websites'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body]

      return_type = opts[:return_type] || 'Array<Websited>'

      auth_names = opts[:auth_names] || ['apiKey']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DefaultApi#get_websites\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # @param body
    # @param website ID Website
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def suspend_user(body, website, opts = {})
      suspend_user_with_http_info(body, website, opts)
      nil
    end

    # @param body
    # @param website ID Website
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def suspend_user_with_http_info(body, website, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DefaultApi.suspend_user ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling DefaultApi.suspend_user"
      end
      # verify the required parameter 'website' is set
      if @api_client.config.client_side_validation && website.nil?
        fail ArgumentError, "Missing the required parameter 'website' when calling DefaultApi.suspend_user"
      end
      # resource path
      local_var_path = '/suspend'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'website'] = website

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(body)

      return_type = opts[:return_type]

      auth_names = opts[:auth_names] || ['apiKey']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DefaultApi#suspend_user\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
