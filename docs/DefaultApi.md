# UlamaApi::DefaultApi

All URIs are relative to *https://api.ulama.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_user**](DefaultApi.md#create_user) | **POST** /users | 
[**enroll_user**](DefaultApi.md#enroll_user) | **POST** /enroll | 
[**get_abandoned_carts**](DefaultApi.md#get_abandoned_carts) | **GET** /abandon | 
[**get_admin_users**](DefaultApi.md#get_admin_users) | **GET** /admin | 
[**get_api_key_owner**](DefaultApi.md#get_api_key_owner) | **GET** /authorize | 
[**get_carts**](DefaultApi.md#get_carts) | **GET** /carts | 
[**get_courses**](DefaultApi.md#get_courses) | **GET** /products | 
[**get_orders**](DefaultApi.md#get_orders) | **GET** /orders | 
[**get_payments**](DefaultApi.md#get_payments) | **GET** /payments | 
[**get_user**](DefaultApi.md#get_user) | **GET** /users | 
[**get_users_given_progress_pct**](DefaultApi.md#get_users_given_progress_pct) | **GET** /percentage | 
[**get_websites**](DefaultApi.md#get_websites) | **GET** /websites | 
[**suspend_user**](DefaultApi.md#suspend_user) | **POST** /suspend | 

# **create_user**
> User create_user(bodywebsite)



### Example
```ruby
# load the gem
require 'ulama-api'
# setup authorization
UlamaApi.configure do |config|
  # Configure API key authorization: apiKey
  config.api_key['X-API-KEY'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['X-API-KEY'] = 'Bearer'
end

api_instance = UlamaApi::DefaultApi.new
body = UlamaApi::UsersBody.new # UsersBody | 
website = 56 # Integer | ID Website


begin
  result = api_instance.create_user(bodywebsite)
  p result
rescue UlamaApi::ApiError => e
  puts "Exception when calling DefaultApi->create_user: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**UsersBody**](UsersBody.md)|  | 
 **website** | **Integer**| ID Website | 

### Return type

[**User**](User.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **enroll_user**
> enroll_user(bodywebsite)



### Example
```ruby
# load the gem
require 'ulama-api'
# setup authorization
UlamaApi.configure do |config|
  # Configure API key authorization: apiKey
  config.api_key['X-API-KEY'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['X-API-KEY'] = 'Bearer'
end

api_instance = UlamaApi::DefaultApi.new
body = UlamaApi::EnrollBody.new # EnrollBody | 
website = 56 # Integer | ID Website


begin
  api_instance.enroll_user(bodywebsite)
rescue UlamaApi::ApiError => e
  puts "Exception when calling DefaultApi->enroll_user: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**EnrollBody**](EnrollBody.md)|  | 
 **website** | **Integer**| ID Website | 

### Return type

nil (empty response body)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



# **get_abandoned_carts**
> Array&lt;Abandon&gt; get_abandoned_carts(website, time, opts)



### Example
```ruby
# load the gem
require 'ulama-api'
# setup authorization
UlamaApi.configure do |config|
  # Configure API key authorization: apiKey
  config.api_key['X-API-KEY'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['X-API-KEY'] = 'Bearer'
end

api_instance = UlamaApi::DefaultApi.new
website = 56 # Integer | ID Website
time = 56 # Integer | Abandon X at least minutes ago
opts = { 
  cart: 56 # Integer | Filter by Cart
}

begin
  result = api_instance.get_abandoned_carts(website, time, opts)
  p result
rescue UlamaApi::ApiError => e
  puts "Exception when calling DefaultApi->get_abandoned_carts: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **website** | **Integer**| ID Website | 
 **time** | **Integer**| Abandon X at least minutes ago | 
 **cart** | **Integer**| Filter by Cart | [optional] 

### Return type

[**Array&lt;Abandon&gt;**](Abandon.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_admin_users**
> Array&lt;Admin&gt; get_admin_users(website)



### Example
```ruby
# load the gem
require 'ulama-api'
# setup authorization
UlamaApi.configure do |config|
  # Configure API key authorization: apiKey
  config.api_key['X-API-KEY'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['X-API-KEY'] = 'Bearer'
end

api_instance = UlamaApi::DefaultApi.new
website = 56 # Integer | ID Website


begin
  result = api_instance.get_admin_users(website)
  p result
rescue UlamaApi::ApiError => e
  puts "Exception when calling DefaultApi->get_admin_users: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **website** | **Integer**| ID Website | 

### Return type

[**Array&lt;Admin&gt;**](Admin.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_api_key_owner**
> Array&lt;Authoirize&gt; get_api_key_owner



### Example
```ruby
# load the gem
require 'ulama-api'
# setup authorization
UlamaApi.configure do |config|
  # Configure API key authorization: apiKey
  config.api_key['X-API-KEY'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['X-API-KEY'] = 'Bearer'
end

api_instance = UlamaApi::DefaultApi.new

begin
  result = api_instance.get_api_key_owner
  p result
rescue UlamaApi::ApiError => e
  puts "Exception when calling DefaultApi->get_api_key_owner: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;Authoirize&gt;**](Authoirize.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_carts**
> Array&lt;Carts&gt; get_carts(website)



### Example
```ruby
# load the gem
require 'ulama-api'
# setup authorization
UlamaApi.configure do |config|
  # Configure API key authorization: apiKey
  config.api_key['X-API-KEY'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['X-API-KEY'] = 'Bearer'
end

api_instance = UlamaApi::DefaultApi.new
website = 56 # Integer | ID Website


begin
  result = api_instance.get_carts(website)
  p result
rescue UlamaApi::ApiError => e
  puts "Exception when calling DefaultApi->get_carts: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **website** | **Integer**| ID Website | 

### Return type

[**Array&lt;Carts&gt;**](Carts.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_courses**
> Array&lt;Products&gt; get_courses(website)



### Example
```ruby
# load the gem
require 'ulama-api'
# setup authorization
UlamaApi.configure do |config|
  # Configure API key authorization: apiKey
  config.api_key['X-API-KEY'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['X-API-KEY'] = 'Bearer'
end

api_instance = UlamaApi::DefaultApi.new
website = 56 # Integer | ID Website


begin
  result = api_instance.get_courses(website)
  p result
rescue UlamaApi::ApiError => e
  puts "Exception when calling DefaultApi->get_courses: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **website** | **Integer**| ID Website | 

### Return type

[**Array&lt;Products&gt;**](Products.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_orders**
> Array&lt;Orders&gt; get_orders(website, opts)



### Example
```ruby
# load the gem
require 'ulama-api'
# setup authorization
UlamaApi.configure do |config|
  # Configure API key authorization: apiKey
  config.api_key['X-API-KEY'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['X-API-KEY'] = 'Bearer'
end

api_instance = UlamaApi::DefaultApi.new
website = 56 # Integer | ID Website
opts = { 
  status: 'status_example', # String | Filter by status
  split_name: true # BOOLEAN | Split Name into First Name and Last Name
}

begin
  result = api_instance.get_orders(website, opts)
  p result
rescue UlamaApi::ApiError => e
  puts "Exception when calling DefaultApi->get_orders: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **website** | **Integer**| ID Website | 
 **status** | **String**| Filter by status | [optional] 
 **split_name** | **BOOLEAN**| Split Name into First Name and Last Name | [optional] 

### Return type

[**Array&lt;Orders&gt;**](Orders.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_payments**
> Array&lt;Payments&gt; get_payments(website)



### Example
```ruby
# load the gem
require 'ulama-api'
# setup authorization
UlamaApi.configure do |config|
  # Configure API key authorization: apiKey
  config.api_key['X-API-KEY'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['X-API-KEY'] = 'Bearer'
end

api_instance = UlamaApi::DefaultApi.new
website = 56 # Integer | ID Website


begin
  result = api_instance.get_payments(website)
  p result
rescue UlamaApi::ApiError => e
  puts "Exception when calling DefaultApi->get_payments: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **website** | **Integer**| ID Website | 

### Return type

[**Array&lt;Payments&gt;**](Payments.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_user**
> User get_user(website, email)



### Example
```ruby
# load the gem
require 'ulama-api'
# setup authorization
UlamaApi.configure do |config|
  # Configure API key authorization: apiKey
  config.api_key['X-API-KEY'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['X-API-KEY'] = 'Bearer'
end

api_instance = UlamaApi::DefaultApi.new
website = 56 # Integer | ID Website
email = 'email_example' # String | Email to search


begin
  result = api_instance.get_user(website, email)
  p result
rescue UlamaApi::ApiError => e
  puts "Exception when calling DefaultApi->get_user: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **website** | **Integer**| ID Website | 
 **email** | **String**| Email to search | 

### Return type

[**User**](User.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_users_given_progress_pct**
> Array&lt;UsersPercentage&gt; get_users_given_progress_pct(website, percentage, course)



Get a list of users who reached a percentage of a course

### Example
```ruby
# load the gem
require 'ulama-api'
# setup authorization
UlamaApi.configure do |config|
  # Configure API key authorization: apiKey
  config.api_key['X-API-KEY'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['X-API-KEY'] = 'Bearer'
end

api_instance = UlamaApi::DefaultApi.new
website = 56 # Integer | ID Website
percentage = 56 # Integer | Percentage reached
course = 56 # Integer | ID Course


begin
  result = api_instance.get_users_given_progress_pct(website, percentage, course)
  p result
rescue UlamaApi::ApiError => e
  puts "Exception when calling DefaultApi->get_users_given_progress_pct: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **website** | **Integer**| ID Website | 
 **percentage** | **Integer**| Percentage reached | 
 **course** | **Integer**| ID Course | 

### Return type

[**Array&lt;UsersPercentage&gt;**](UsersPercentage.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_websites**
> Array&lt;Websited&gt; get_websites



### Example
```ruby
# load the gem
require 'ulama-api'
# setup authorization
UlamaApi.configure do |config|
  # Configure API key authorization: apiKey
  config.api_key['X-API-KEY'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['X-API-KEY'] = 'Bearer'
end

api_instance = UlamaApi::DefaultApi.new

begin
  result = api_instance.get_websites
  p result
rescue UlamaApi::ApiError => e
  puts "Exception when calling DefaultApi->get_websites: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;Websited&gt;**](Websited.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **suspend_user**
> suspend_user(bodywebsite)



### Example
```ruby
# load the gem
require 'ulama-api'
# setup authorization
UlamaApi.configure do |config|
  # Configure API key authorization: apiKey
  config.api_key['X-API-KEY'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['X-API-KEY'] = 'Bearer'
end

api_instance = UlamaApi::DefaultApi.new
body = UlamaApi::SuspendBody.new # SuspendBody | 
website = 56 # Integer | ID Website


begin
  api_instance.suspend_user(bodywebsite)
rescue UlamaApi::ApiError => e
  puts "Exception when calling DefaultApi->suspend_user: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SuspendBody**](SuspendBody.md)|  | 
 **website** | **Integer**| ID Website | 

### Return type

nil (empty response body)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



