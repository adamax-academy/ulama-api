# UlamaApi::Orders

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** | Id of the order | [optional] 
**id_user** | **Integer** | Id of the user | [optional] 
**id_cart** | **Integer** | Id of the cart | [optional] 
**date** | **DateTime** | The date of the order | [optional] 
**amount** | [**Fload**](Fload.md) | The amount of the order | [optional] 
**type** | **String** | The type of the order (one_time, recurring, multiple) | [optional] 
**method** | **String** | Payment method | [optional] 
**status** | **String** | Status of the order | [optional] 
**cart_name** | **String** | The cart name | [optional] 
**currency** | **String** | The currency of the order | [optional] 
**customer_name** | **String** | Customer Name | [optional] 
**customer_email** | **String** | Customer Email | [optional] 
**extra** | [**OrdersExtra**](OrdersExtra.md) |  | [optional] 
**items** | [**Array&lt;OrdersItems&gt;**](OrdersItems.md) | List of bought items | [optional] 

