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

A webhook is a way for a application to provide callbacks for 3-part applications.

When an event occurs, the source application typically triggers an http POST call to a pre-configured external URL and wraps the data from the triggered event in the request's payload.

This approach allows external applications to respond to events via the standard WebAPI interface.

**Table of contents:**

* [Subscribe](for-developers.md#subscribe)
* [Unsubscribe](for-developers.md#unsubscribe)
* [Receiving WebHooks](for-developers.md#receiving-webhooks)

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

If you no longer want to receive WebHooks from MyDataCoin you need to send a request to a following address.

{% swagger method="get" path="/api/v1/webhooks/unsubscribe" baseUrl="https://bridge.mydatacoin.io" summary="Unsubscribe from receiving WebHooks" expanded="false" %}
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

### Receiving WebHooks

#### Request:

To be able to accept webhooks on your side, you must configure your endpoint to receive data in the form of the following json:

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
0 - Request for personal data of user\
1 - Request for a report on the account\
\
The email parameter can contain either one email or there can be several (linked to the same account).

WebHook server will wait for a one of the following responses:

#### Response:

<details>

<summary>Example</summary>

```json5
{
  "firstName": "string",
  "lastName": "string",
  "dateOfBirth": "2023-01-30T13:50:19.765Z",
  "gender": 0,
  "email": [
    "string"
  ],
  "phone": [
    "string"
  ],
  "basicData": {
    "interests": [
      "string"
    ],
    "languages": [
      "string"
    ],
    "religionViews": [
      "string"
    ],
    "politicalViews": [
      "string"
    ]
  },
  "contacts": {
    "mobilePhone": "string",
    "address": "string",
    "linkedAccounts": [
      "string"
    ],
    "website": "string"
  },
  "workAndEducation": {
    "placeOfWork": "string",
    "skills": [
      "string"
    ],
    "university": "string",
    "faculty": "string"
  },
  "placeOfResidence": {
    "currentCity": "string",
    "birthPlace": "string",
    "otherCities": [
      "string"
    ]
  },
  "personalInterests": {
    "breifDescription": "string",
    "hobby": [
      "string"
    ],
    "sport": [
      "string"
    ]
  }
}
```

</details>

<details>

<summary>Json Schema</summary>

```json5
{
  "definitions": {
    "BasicData": {
      "type": [
        "object",
        "null"
      ],
      "properties": {
        "Interests": {
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
        "Languages": {
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
        "ReligionViews": {
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
        "PoliticalViews": {
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
        "Interests",
        "Languages",
        "ReligionViews",
        "PoliticalViews"
      ]
    },
    "Contacts": {
      "type": [
        "object",
        "null"
      ],
      "properties": {
        "MobilePhone": {
          "type": [
            "string",
            "null"
          ]
        },
        "Address": {
          "type": [
            "string",
            "null"
          ]
        },
        "LinkedAccounts": {
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
        "Website": {
          "type": [
            "string",
            "null"
          ]
        }
      },
      "required": [
        "MobilePhone",
        "Address",
        "LinkedAccounts",
        "Website"
      ]
    },
    "PersonalInterests": {
      "type": [
        "object",
        "null"
      ],
      "properties": {
        "BreifDescription": {
          "type": [
            "string",
            "null"
          ]
        },
        "Hobby": {
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
        "Sport": {
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
        "BreifDescription",
        "Hobby",
        "Sport"
      ]
    },
    "PlaceOfResidence": {
      "type": [
        "object",
        "null"
      ],
      "properties": {
        "CurrentCity": {
          "type": [
            "string",
            "null"
          ]
        },
        "BirthPlace": {
          "type": [
            "string",
            "null"
          ]
        },
        "OtherCities": {
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
        "CurrentCity",
        "BirthPlace",
        "OtherCities"
      ]
    },
    "WorkAndEducation": {
      "type": [
        "object",
        "null"
      ],
      "properties": {
        "PlaceOfWork": {
          "type": [
            "string",
            "null"
          ]
        },
        "Skills": {
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
        "University": {
          "type": [
            "string",
            "null"
          ]
        },
        "Faculty": {
          "type": [
            "string",
            "null"
          ]
        }
      },
      "required": [
        "PlaceOfWork",
        "Skills",
        "University",
        "Faculty"
      ]
    }
  },
  "type": "object",
  "properties": {
    "FirstName": {
      "type": [
        "string",
        "null"
      ]
    },
    "LastName": {
      "type": [
        "string",
        "null"
      ]
    },
    "DateOfBirth": {
      "type": [
        "string",
        "null"
      ],
      "format": "date-time"
    },
    "Gender": {
      "type": [
        "integer",
        "null"
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
    },
    "BasicData": {
      "$ref": "#/definitions/BasicData"
    },
    "Contacts": {
      "$ref": "#/definitions/Contacts"
    },
    "WorkAndEducation": {
      "$ref": "#/definitions/WorkAndEducation"
    },
    "PlaceOfResidence": {
      "$ref": "#/definitions/PlaceOfResidence"
    },
    "PersonalInterests": {
      "$ref": "#/definitions/PersonalInterests"
    }
  },
  "required": [
    "FirstName",
    "LastName",
    "DateOfBirth",
    "Gender",
    "Email",
    "Phone",
    "BasicData",
    "Contacts",
    "WorkAndEducation",
    "PlaceOfResidence",
    "PersonalInterests"
  ]
}
```

</details>

Model details:

<table><thead><tr><th>Parameter</th><th>Data Type</th><th data-type="checkbox">Nullable</th></tr></thead><tbody><tr><td>FirstName</td><td>string</td><td>false</td></tr><tr><td>LastName</td><td>string</td><td>false</td></tr><tr><td>DateOfBirth</td><td>DateTime</td><td>true</td></tr><tr><td>Gender</td><td>int</td><td>true</td></tr><tr><td>Email</td><td>string[]</td><td>false</td></tr><tr><td>Phone</td><td>string[]</td><td>true</td></tr><tr><td>BasicData</td><td><a href="for-developers.md#basicdata">BasicData</a></td><td>true</td></tr><tr><td>Contacts</td><td><a href="for-developers.md#contacts">Contacts</a></td><td>true</td></tr><tr><td>WorkAndEducation</td><td><a href="for-developers.md#workandeducation">WorkAndEducation</a></td><td>true</td></tr><tr><td>PlaceOfResidence</td><td><a href="for-developers.md#placeofresidence">PlaceOfResidence</a></td><td>true</td></tr><tr><td>PersonalInterests</td><td><a href="for-developers.md#personalinterests">PersonalInterests</a></td><td>true</td></tr></tbody></table>

#### BasicData

<table><thead><tr><th>Parameter</th><th>Data Type</th><th data-type="checkbox">Nullable</th></tr></thead><tbody><tr><td>Interests</td><td>string[]</td><td>true</td></tr><tr><td>Languages</td><td>string[]</td><td>true</td></tr><tr><td>ReligionViews</td><td>string[]</td><td>true</td></tr><tr><td>PoliticalViews</td><td>string[]</td><td>true</td></tr></tbody></table>

#### Contacts

<table><thead><tr><th>Parameter</th><th>Data Type</th><th data-type="checkbox"></th></tr></thead><tbody><tr><td>MobilePhone</td><td>string</td><td>true</td></tr><tr><td>Address</td><td>string</td><td>true</td></tr><tr><td>LinkedAccounts</td><td>string[]</td><td>true</td></tr><tr><td>Website</td><td>string</td><td>true</td></tr></tbody></table>

#### WorkAndEducation

<table><thead><tr><th>Parameter</th><th>Data Type</th><th data-type="checkbox">Nullable</th></tr></thead><tbody><tr><td>PlaceOfWork</td><td>string</td><td>true</td></tr><tr><td>Skills</td><td>string[]</td><td>true</td></tr><tr><td>University</td><td>string</td><td>true</td></tr><tr><td>Faculty</td><td>string</td><td>true</td></tr></tbody></table>

#### PlaceOfResidence

<table><thead><tr><th>Parameter</th><th>Data Type</th><th data-type="checkbox">Nullable</th></tr></thead><tbody><tr><td>CurrentCity</td><td>string</td><td>true</td></tr><tr><td>BirthPlace</td><td>string</td><td>true</td></tr><tr><td>OtherCities</td><td>string[]</td><td>true</td></tr></tbody></table>

#### PersonalInterests

<table><thead><tr><th></th><th>Data Type</th><th data-type="checkbox">Nullable</th></tr></thead><tbody><tr><td>BreifDescription</td><td>string</td><td>true</td></tr><tr><td>Hobby</td><td>string[]</td><td>true</td></tr><tr><td>Sport</td><td>string[]</td><td>true</td></tr></tbody></table>



