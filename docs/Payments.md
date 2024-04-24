# UlamaApi::Payments

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** | Id of the payment | [optional] 
**id_order** | **Integer** | Id of the order | [optional] 
**date** | **DateTime** | The date of the payment | [optional] 
**value** | [**Fload**](Fload.md) | The amount of the payment | [optional] 
**currency** | **String** | The currency of the order | [optional] 
**paid** | **BOOLEAN** | If is paid or not | [optional] 
**transaction** | **String** | Transaction ID | [optional] 
**error** | **String** | Error (if one) | [optional] 
**invoice** | **String** | Invoice object if available | [optional] 
**method** | **String** | Payment Method | [optional] 
**id_user** | **Integer** | Id of the user | [optional] 
**customer_name** | **String** | Customer full name | [optional] 
**customer_email** | **String** | Customer Email | [optional] 
**external_id** | **Integer** | External ID of the user | [optional] 
**extra** | [**OrdersExtra**](OrdersExtra.md) |  | [optional] 

