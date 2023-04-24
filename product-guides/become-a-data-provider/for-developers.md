---
description: >-
  In this guide, we provide detailed instructions for connecting a Data Holder
  to MyDataCoin Bridge and receiving requests.
---

# 👨💻 For Developers

{% hint style="warning" %}
**Disclaimer:** The development team is working diligently, and the documentation will be updated with each new release.
{% endhint %}

### Overview

This guide provides a comprehensive explanation of how to effectively interact with the MyDataCoin ecosystem. To integrate successfully, you will need to set up an endpoint that can receive POST requests, which will, in turn, return the response described in the sections below.

**Table of contents:**

* [Subscribe](for-developers.md#subscribe)
* [Unsubscribe](for-developers.md#unsubscribe)
* [Receiving Requests](for-developers.md#receiving-requests)

{% hint style="info" %}
Before you begin, make sure that you have an Access Token. You should have received this token after completing the registration process, as described in the previous step.
{% endhint %}

### Subscribe

In order to start receiving requests from the MyDataCoin, you need to subscribe.&#x20;

{% swagger method="post" path="/api/v1/webhooks/subscribe" baseUrl="https://bridge.mydatacoin.io" summary="Subscribe to receive requests" expanded="false" %}
{% swagger-description %}
Your account has to be approved by system operator, otherwise you'll get 204 response code.
{% endswagger-description %}

{% swagger-parameter in="body" name="token" required="true" %}
Your access token
{% endswagger-parameter %}

{% swagger-parameter in="body" name="url" required="true" %}

{% endswagger-parameter %}

{% swagger-response status="200: OK" description="Ok" %}
```javascript
{
    "code": 200,
    "message":"Ok"
}
```
{% endswagger-response %}

{% swagger-response status="204: No Content" description="User Not Found" %}

{% endswagger-response %}

{% swagger-response status="400: Bad Request" description="Error" %}
```javascript
{
    "code": 400,
    "message": "Error Message"
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

Request samples:

{% tabs %}
{% tab title="cURL" %}
```
curl --location --request POST 'https://bridge.mydatacoin.io/api/v1/webhooks/subscribe' \
--data-raw '{
  "token": "YourAccessToken",
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
writer.write("{\n  \"token\": \"YourAccessToken\",\n  \"url\": \"https://yourWebHookHandlerURL.com\"\n}");
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
using (var httpClient = new HttpClient())
{
    using (var request = new HttpRequestMessage(new HttpMethod("POST"), "https://bridge.mydatacoin.io/api/v1/webhooks/subscribe"))
    {
        request.Content = new StringContent("{\n  \"token\": \"YourAccessToken\",\n  \"url\": \"https://yourWebHookHandlerURL.com\"\n}");
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
curl_setopt($ch, CURLOPT_POSTFIELDS, "{\n  \"token\": \"YourAccessToken\",\n  \"url\": \"https://yourWebHookHandlerURL.com\"\n}");
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
    '{\n  "token": "YourAccessToken",\n  "url": "https://yourWebHookHandlerURL.com"\n}',
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

If you no longer want to receive requests from MyDataCoin you need to send a request to a following address.

{% swagger method="get" path="/api/v1/webhooks/unsubscribe" baseUrl="https://bridge.mydatacoin.io" summary="Unsubscribe from receiving requests" expanded="false" %}
{% swagger-description %}

{% endswagger-description %}

{% swagger-parameter in="path" name="token" required="true" %}
Your access token
{% endswagger-parameter %}

{% swagger-response status="200: OK" description="Ok" %}
```javascript
{
    "code": 200,
    "message": "Ok"
}
```
{% endswagger-response %}

{% swagger-response status="204: No Content" description="User Not Found" %}

{% endswagger-response %}

{% swagger-response status="400: Bad Request" description="Error" %}
```javascript
{
    "code": 400,
    "message": "Error Message"
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

Request samples:

{% tabs %}
{% tab title="cURL" %}
```
curl --request GET '//api/v1/WebHooks/unsubscribe/YourAccessToken'
```
{% endtab %}

{% tab title="Java" %}
{% code lineNumbers="true" %}
```java
URL url = new URL("http:////api/v1/WebHooks/unsubscribe/YourAccessToken");
HttpURLConnection httpConn = (HttpURLConnection) url.openConnection();
httpConn.setRequestMethod("GET");

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
using (var httpClient = new HttpClient())
{
    using (var request = new HttpRequestMessage(new HttpMethod("GET"), "https://bridge.mydatacoin.io/api/v1/webhooks/usubscribe/YourAccessToken"))
    {
        var response = await httpClient.SendAsync(request);
    }
}
```
{% endcode %}
{% endtab %}

{% tab title="PHP" %}
{% code lineNumbers="true" %}
```php
$ch = curl_init();
curl_setopt($ch, CURLOPT_URL, 'http:////api/v1/WebHooks/unsubscribe/YourAccessToken');
curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
curl_setopt($ch, CURLOPT_CUSTOMREQUEST, 'GET');
curl_setopt($ch, CURLOPT_FOLLOWLOCATION, true);

$response = curl_exec($ch);

curl_close($ch);
```
{% endcode %}
{% endtab %}

{% tab title="Node.js(Axios)" %}
<pre class="language-javascript" data-line-numbers><code class="lang-javascript">const axios = require('axios');
<strong>const response = await axios.get('http:////api/v1/WebHooks/unsubscribe/YourAccessToken');
</strong></code></pre>
{% endtab %}
{% endtabs %}

### Receiving Requests

#### Request:

To be able to accept requests on your side, you must configure your endpoint to receive data in the form of the following json:

<details>

<summary>Example</summary>

```
{
  "secret": "your_secret_key",
  "action": 0,
  "email": [
    "example@mail.com"
  ],
  "phone": [
    "string"
  ]
}
```

</details>

<details>

<summary>Json Schema</summary>

```json5
{
  "type": "object",
  "properties": {
    "Secret": {
      "type": [
        "string",
        "null"
      ]
    },
    "Action": {
      "type": "integer",
      "enum": [
        0,
        1
      ]
    },
    "Email": {
      "type": [
        "array",
        "null"
      ],
      "items": {
        "type": [
          "string",
          "null"
        ]
      }
    },
    "Phone": {
      "type": [
        "array",
        "null"
      ],
      "items": {
        "type": [
          "string",
          "null"
        ]
      }
    }
  },
  "required": [
    "Secret",
    "Action",
    "Email",
    "Phone"
  ]
}
```

</details>

Model details:

<table><thead><tr><th>Parameter</th><th>Data Type</th><th data-type="checkbox">Nullabe</th></tr></thead><tbody><tr><td>Secret</td><td>string</td><td>false</td></tr><tr><td>Action</td><td>int<br>0 - Personal data requested<br>1 - Report requested</td><td>false</td></tr><tr><td>Email</td><td>string[]</td><td>false</td></tr><tr><td>Phone</td><td>string[]</td><td>true</td></tr></tbody></table>

Every time a request comes to the endpoint you provided, pay attention to the Action parameter, there will always be one of two types of request:\
0 - Request for a personal data of user\
1 - Request for a report on the account\
\
The email parameter can contain either one email or there can be several (linked to the same account).

After you successfully subscribed be ready to receive requests. Our server will wait for the following response:

#### Response for action = 0 (Request for a personal data of user):

<details>

<summary>Response Body</summary>

```json5
{
  "profile": {
    "firstName": "Alice",
    "lastName": "Smith",
    "dateOfBirth": "1999-09-09T00:00:00Z",
    "gender": null,
    "email": [
      "example@mail.com"
    ],
    "phone": []
  },
  "basicData": {
    "interests": null,
    "languages": null,
    "religionViews": null,
    "politicalViews": null
  },
  "contacts": {
    "mobilePhone": null,
    "address": null,
    "linkedAccounts": null,
    "website": null
  },
  "workAndEducation": {
    "placeOfWork": null,
    "skills": null,
    "university": null,
    "faculty": null
  },
  "placeOfResidence": {
    "currentCity": null,
    "birthPlace": null,
    "otherCities": null
  },
  "personalInterests": {
    "breifDescription": null,
    "hobby": null,
    "sport": null
  }
}
```

</details>

Model details:

<table><thead><tr><th>Parameter</th><th>Data Type</th><th data-type="checkbox">Nullable</th></tr></thead><tbody><tr><td>Profile</td><td><a href="for-developers.md#profile">Profile</a></td><td>true</td></tr><tr><td>BasicData</td><td><a href="for-developers.md#basicdata">BasicData</a></td><td>true</td></tr><tr><td>Contacts</td><td><a href="for-developers.md#contacts">Contacts</a></td><td>true</td></tr><tr><td>WorkAndEducation</td><td><a href="for-developers.md#workandeducation">WorkAndEducation</a></td><td>true</td></tr><tr><td>PlaceOfResidence</td><td><a href="for-developers.md#placeofresidence">PlaceOfResidence</a></td><td>true</td></tr><tr><td>PersonalInterests</td><td><a href="for-developers.md#personalinterests">PersonalInterests</a></td><td>true</td></tr><tr><td>DeviceInformation</td><td><a href="for-developers.md#deviceinformation">DeviceInformation</a></td><td>true</td></tr></tbody></table>

#### Profile

<table><thead><tr><th>Parameter</th><th>Data Type</th><th>Comment</th><th data-type="checkbox">Nullable</th></tr></thead><tbody><tr><td>FirstName</td><td>string</td><td></td><td>false</td></tr><tr><td>LastName</td><td>string</td><td></td><td>false</td></tr><tr><td>DateOfBirth</td><td>DateTime</td><td></td><td>true</td></tr><tr><td>Gender</td><td>int</td><td><p>Enum</p><pre class="language-csharp"><code class="lang-csharp">0 = Male,
1 = Female
</code></pre></td><td>true</td></tr><tr><td>Email</td><td>string[]</td><td></td><td>false</td></tr><tr><td>Phone</td><td>string[]</td><td></td><td>true</td></tr><tr><td>MaritalStatus</td><td>int</td><td><p><a href="for-developers.md#maritalstatus">MaritalStatus</a></p><pre class="language-json"><code class="lang-json"><strong>0 = Single,
</strong>1 = Married,
2 = Divorced,
3 = Bachelor,
4 = Widow,
5 = Cohabiting,
6 = Separated,
7 = Living_Separately,
8 = Remarried
</code></pre></td><td>true</td></tr></tbody></table>

#### BasicData

<table><thead><tr><th>Parameter</th><th>Data Type</th><th data-type="checkbox">Nullable</th></tr></thead><tbody><tr><td>Interests</td><td>string[]</td><td>true</td></tr><tr><td>Languages</td><td>string[]</td><td>true</td></tr><tr><td>ReligionViews</td><td>string[]</td><td>true</td></tr><tr><td>PoliticalViews</td><td>string[]</td><td>true</td></tr></tbody></table>

#### Contacts

<table><thead><tr><th>Parameter</th><th>Data Type</th><th data-type="checkbox"></th></tr></thead><tbody><tr><td>MobilePhone</td><td>string</td><td>true</td></tr><tr><td>Address</td><td>string</td><td>true</td></tr><tr><td>LinkedAccounts</td><td>string[]</td><td>true</td></tr><tr><td>Website</td><td>string</td><td>true</td></tr></tbody></table>

#### WorkAndEducation

<table><thead><tr><th>Parameter</th><th>Data Type</th><th data-type="checkbox">Nullable</th></tr></thead><tbody><tr><td>PlaceOfWork</td><td>string</td><td>true</td></tr><tr><td>Skills</td><td>string[]</td><td>true</td></tr><tr><td>University</td><td>string</td><td>true</td></tr><tr><td>Faculty</td><td>string</td><td>true</td></tr></tbody></table>

#### PlaceOfResidence

<table><thead><tr><th>Parameter</th><th>Data Type</th><th data-type="checkbox">Nullable</th></tr></thead><tbody><tr><td>CurrentCity</td><td>string</td><td>true</td></tr><tr><td>BirthPlace</td><td>string</td><td>true</td></tr><tr><td>OtherCities</td><td>string[]</td><td>true</td></tr></tbody></table>

#### PersonalInterests

<table><thead><tr><th>Parameter</th><th>Data Type</th><th data-type="checkbox">Nullable</th></tr></thead><tbody><tr><td>BreifDescription</td><td>string</td><td>true</td></tr><tr><td>Hobby</td><td>string[]</td><td>true</td></tr><tr><td>Sport</td><td>string[]</td><td>true</td></tr></tbody></table>

#### DeviceInformation

<table><thead><tr><th>Parameter</th><th>Data Type</th><th>Comments</th><th data-type="checkbox">Nullable</th></tr></thead><tbody><tr><td>DeviceName</td><td>string</td><td>Device used to access the internet</td><td>false</td></tr><tr><td>OperatingSystem</td><td>string</td><td>Operating system and its version</td><td>false</td></tr><tr><td>DisplayResolution</td><td>string</td><td>Screen resolution</td><td>true</td></tr><tr><td>Browser</td><td>string</td><td>Used browser and its version</td><td>false</td></tr><tr><td>ISP</td><td>string</td><td>Information about the internet service provider and type of connection</td><td>true</td></tr><tr><td>AdBlock</td><td>bool</td><td>Presence of ad blockers</td><td>true</td></tr></tbody></table>

#### MaritalStatus

Marital status is a characteristic that reflects a person's marital status. Depending on the country and culture, there are different categories of marital statuses. Some of them may include:

| Value              |                                                                                                                   |
| ------------------ | ----------------------------------------------------------------------------------------------------------------- |
| Single             | Single - a person who is not married and does not have an official partner.                                       |
| Married            | Married - a person who is in an official marriage.                                                                |
| Divorced           | Divorced - a person who was in an official marriage but got divorced.                                             |
| Bachelor           | Bachelor/Spinster - a person who lives alone, regardless of their marital status.                                 |
| Widow              | Widower/Widow - a person who lost their spouse.                                                                   |
| Cohabiting         | Cohabiting - two people who live together but are not in an official marriage.                                    |
| Separated          | Separated - a person who was in an official marriage but is in the process of getting divorced.                   |
| Living\_Separately | Living separately - a person who lives separately from their family, for example, in a dormitory or student room. |
| Remarried          | Remarried - spouses who have already been in an official marriage and have remarried.                             |

#### Response for action = 1 (Request for a report on the account):&#x20;

<details>

<summary>Response Example</summary>

```json5
{
	"action": 1,
	"payload": "'Video_VAST_desktop': 0, 'Video_VAST_mobile': 0, 'Multitag_mobile': 0, 'In-page_desktop': 0, 'Credit_History': 0, 'Banner_mobile': 0, 'Personal_Data': 0, 'Banner_desktop': 0, 'Conversion': 0, 'Popunder_desktop': 0, 'Multitag_desktop': 0, 'View': 0, 'Insurance_History': 0, 'Popunder_mobile': 0, 'Click': 0, 'In-page_mobile': 0"
}
```

</details>

<details>

<summary>Payload Body</summary>

```json5
{
	"Video_VAST_desktop": 0,
	"Video_VAST_mobile": 0,
	"Multitag_mobile": 0,
	"In-page_desktop": 0,
	"Credit_History": 0,
	"Banner_mobile": 0,
	"Personal_Data": 0,
	"Banner_desktop": 0,
	"Conversion": 0,
	"Popunder_desktop": 0,
	"Multitag_desktop": 0,
	"View": 0,
	"Insurance_History": 0,
	"Popunder_mobile": 0,
	"Click": 0,
	"In-page_mobile": 0
}
```

</details>

Model details:

<table><thead><tr><th>Monetization type</th><th>Data Type</th><th data-type="checkbox"></th></tr></thead><tbody><tr><td>View</td><td>int</td><td>false</td></tr><tr><td>Click</td><td>int</td><td>false</td></tr><tr><td>Conversion</td><td>int</td><td>false</td></tr><tr><td>Personal Data</td><td>int</td><td>false</td></tr><tr><td>Credit History</td><td>int</td><td>false</td></tr><tr><td>Insurance History</td><td>int</td><td>false</td></tr><tr><td>Banner mobile</td><td>int</td><td>false</td></tr><tr><td>Banner desktop</td><td>int</td><td>false</td></tr><tr><td>Video VAST mobile</td><td>int</td><td>false</td></tr><tr><td>Video VAST desktop</td><td>int</td><td>false</td></tr><tr><td>Popunder desktop</td><td>int</td><td>false</td></tr><tr><td>Popunder mobile</td><td>int</td><td>false</td></tr><tr><td>Multitag desktop</td><td>int</td><td>false</td></tr><tr><td>Multitag mobile</td><td>int</td><td>false</td></tr><tr><td>In-page desktop</td><td>int</td><td>false</td></tr><tr><td>In-page mobile</td><td>int</td><td>false</td></tr></tbody></table>
