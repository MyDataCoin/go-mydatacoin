---
description: >-
  Instructions for connecting a Data Holder to MyDataCoin Bridge and getting
  webhooks
---

# 👨💻 For Developers

{% hint style="warning" %}
**Disclaimer:** The development team is working hard. The documentation will be updated as new releases are released.
{% endhint %}

### Overview

Further, all the necessary information is provided to establish communication with the MDC Bridge service and exchange data.

{% hint style="info" %}
Before you start, make sure that you have an Access Token. You should receive the token after the registration, which is described in the previous step.
{% endhint %}

### Subscribe

In order to start receiving updates from the MyDataCoin in the form of webhooks, you need to subscribe.&#x20;

{% swagger method="post" path="/api/v1/webhooks/subscribe" baseUrl="https://bridge.mydatacoin.io" summary="Subscribe to receive WebHooks" expanded="false" %}
{% swagger-description %}
Your account has to be approved by system operator, otherwise you'll get 204 response code.
{% endswagger-description %}

{% swagger-parameter in="body" name="token" required="true" %}

{% endswagger-parameter %}

{% swagger-parameter in="body" name="url" required="true" %}

{% endswagger-parameter %}

{% swagger-response status="200: OK" description="Ok" %}
```javascript
{
    "code":"200",
    "message":"Ok"
}
```
{% endswagger-response %}

{% swagger-response status="204: No Content" description="User Not Found" %}
```javascript
```
{% endswagger-response %}

{% swagger-response status="400: Bad Request" description="Error" %}
```javascript
{
    "code":"400",
    "message":"Error Message"
}
```
{% endswagger-response %}

{% swagger-response status="500: Internal Server Error" description="Server Error" %}
```javascript
{
    "Error": "Internal server error"
}
```
{% endswagger-response %}
{% endswagger %}

Here below you can see request samples.

{% tabs %}
{% tab title="cURL" %}
```
curl --location --request POST 'https://bridge.mydatacoin.io/api/v1/webhooks/subscribe' \
--data-raw '{
  "token": "YourSecretToken",
  "url": "https://yourWebHookHandlerURL.com"
}'
```
{% endtab %}

{% tab title="Java" %}
{% code lineNumbers="true" %}
```java
URL url = new URL("https://bridge.mydatacoin.io/api/v1/webhooks/subscribe");
HttpURLConnection httpConn = (HttpURLConnection) url.openConnection();
httpConn.setRequestMethod("POST");

httpConn.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");

httpConn.setDoOutput(true);
OutputStreamWriter writer = new OutputStreamWriter(httpConn.getOutputStream());
writer.write("{\n  \"token\": \"YourSecretToken\",\n  \"url\": \"https://yourWebHookHandlerURL.com\"\n}");
writer.flush();
writer.close();
httpConn.getOutputStream().close();

InputStream responseStream = httpConn.getResponseCode() / 100 == 2
		? httpConn.getInputStream()
		: httpConn.getErrorStream();
Scanner s = new Scanner(responseStream).useDelimiter("\\A");
String response = s.hasNext() ? s.next() : "";
System.out.println(response);
```
{% endcode %}
{% endtab %}

{% tab title="C#" %}
{% code lineNumbers="true" %}
```csharp
// In production code, don't destroy the HttpClient through using, but better use IHttpClientFactory factory or at least reuse an existing HttpClient instance
// https://docs.microsoft.com/en-us/aspnet/core/fundamentals/http-requests
// https://www.aspnetmonsters.com/2016/08/2016-08-27-httpclientwrong/
using (var httpClient = new HttpClient())
{
    using (var request = new HttpRequestMessage(new HttpMethod("POST"), "https://bridge.mydatacoin.io/api/v1/webhooks/subscribe"))
    {
        request.Content = new StringContent("{\n  \"token\": \"YourSecretToken\",\n  \"url\": \"https://yourWebHookHandlerURL.com\"\n}");
        request.Content.Headers.ContentType = MediaTypeHeaderValue.Parse("application/x-www-form-urlencoded"); 

        var response = await httpClient.SendAsync(request);
    }
}
```
{% endcode %}
{% endtab %}

{% tab title="PHP" %}
{% code lineNumbers="true" %}
```php
<?php
$ch = curl_init();
curl_setopt($ch, CURLOPT_URL, 'https://bridge.mydatacoin.io/api/v1/webhooks/subscribe');
curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
curl_setopt($ch, CURLOPT_CUSTOMREQUEST, 'POST');
curl_setopt($ch, CURLOPT_HTTPHEADER, [
    'Content-Type' => 'application/x-www-form-urlencoded',
]);
curl_setopt($ch, CURLOPT_POSTFIELDS, "{\n  \"token\": \"YourSecretToken\",\n  \"url\": \"https://yourWebHookHandlerURL.com\"\n}");
curl_setopt($ch, CURLOPT_FOLLOWLOCATION, true);

$response = curl_exec($ch);

curl_close($ch);
```
{% endcode %}
{% endtab %}

{% tab title="Node.js(Axios)" %}
{% code lineNumbers="true" %}
```javascript
const axios = require('axios');

const response = await axios.post(
    'https://bridge.mydatacoin.io/api/v1/webhooks/subscribe',
    '{\n  "token": "YourSecretToken",\n  "url": "https://yourWebHookHandlerURL.com"\n}',
    {
        headers: {
            'Content-Type': 'application/x-www-form-urlencoded'
        }
    }
);
```
{% endcode %}
{% endtab %}
{% endtabs %}

### Unsubscribe

If you no longer want to receive WebHooks from MyDataCoin you need to send a request to a following address.

