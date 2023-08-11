---
description: >-
  In this guide, we provide detailed instructions for connecting a Data Holder
  to MyDataCoin Bridge and receiving requests.
---

# 👨💻 For Developers

{% hint style="warning" %}
[#profile](for-developers.md#profile "mention")**Disclaimer:** The development team is working diligently, and the documentation will be updated with each new release.
{% endhint %}

**Table of contents:**

* [Install Docker](for-developers.md#install-docker)
* [Setup Docker](for-developers.md#setup-docker)
* [Subscribe](for-developers.md#subscribe)
* [Unsubscribe](for-developers.md#unsubscribe)
* [Upload a DataSet](for-developers.md#upload-a-dataset)
* [User Model](for-developers.md#user-model)
* [Add Records](for-developers.md#add-records)

### System Requirements

*   **Hardware:**\
    CPU: Intel Core i3 or AMD Ryzen 3.

    RAM: At least 4GB.

    HDD: 20GB free space.\
    64-bit kernel and CPU support for virtualization.
* **Software:**\
  Linux 18.04 LTS or Higher, Windows 10 or Higher\
  Docker for [Linux](https://docs.docker.com/desktop/install/linux-install/) or [Windows](https://desktop.docker.com/win/main/amd64/Docker%20Desktop%20Installer.exe?utm\_source=docker\&utm\_medium=webreferral\&utm\_campaign=dd-smartbutton\&utm\_location=module&\_gl=1\*1h1edy2\*\_ga\*MTY3NDYyODgzOC4xNjg1OTUxODU2\*\_ga\_XJWPQMJYHQ\*MTY4NzI1MzU5Ny4zLjEuMTY4NzI1MzcxMC42MC4wLjA.)

### Overview

This guide provides a comprehensive explanation of how to effectively interact with the MyDataCoin ecosystem. To integrate successfully, you will need to set up an endpoint that can receive POST requests, which will, in turn, return the response described in the sections below.

### Install Docker

Please select the appropriate link for your operation system and follow the provided instructions to install Docker:

* For Linux: [Docker Installation Instructions for Linux](https://docs.docker.com/engine/install/)

If you use Ubuntu, and have a following error:

```
E: Package 'docker-ce' has no installation candidate
E: Unable to locate package docker-ce-cli
E: Unable to locate package containerd.io
E: Couldn't find any package by glob 'containerd.io'
E: Couldn't find any package by regex 'containerd.io'
E: Unable to locate package docker-buildx-plugin
E: Unable to locate package docker-compose-plugin
```

please visit: [Link](https://itslinuxfoss.com/fix-package-docker-ce-no-installation-candidate-error/).

* For Windows: [Docker Installation Instructions for Windows](https://docs.docker.com/docker-for-windows/install/)&#x20;
* For macOS: [Docker Installation Instructions for macOS](https://docs.docker.com/docker-for-mac/install/)

### Installing Docker Compose

To make sure you obtain the most updated stable version of Docker Compose, you’ll download this software from its [official Github repository](https://github.com/docker/compose).

First, confirm the latest version available in their [releases page](https://github.com/docker/compose/releases). At the time of this writing, the most current stable version is `1.29.2`.

The following command will download the `1.29.2` release and save the executable file at `/usr/local/bin/docker-compose`, which will make this software globally accessible as `docker-compose`:

```bash
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
```

Next, set the correct permissions so that the `docker-compose` command is executable:

```bash
sudo chmod +x /usr/local/bin/docker-compose
```

To verify that the installation was successful, you can run:

```bash
docker-compose --version
```

### Setup Docker

{% hint style="info" %}
Before you begin, make sure that you have an **Secret Token**. You should have received this token after completing the registration process, as described [here](for-managers.md#registration).
{% endhint %}

After Docker successfully installed, you need to download **docker-compose.yml** from our official repository:

```git
git clone https://github.com/MyDataCoin/mdc-docker
```

1. Open **docker-compose.yml** file to make changes;
2. Get your **Secret Token** from [https://app.mydatacoin.io/settings](https://app.mydatacoin.io/settings). You will find it in **Settings** tab;
3. Put the token in AUTH\_TOKEN env variable.

<figure><img src="../../.gitbook/assets/Screenshot 2023-06-28 at 17.40.23.png" alt=""><figcaption><p>Change Secret Token</p></figcaption></figure>

After you made changes, save the file and run the following command in terminal:

```
docker-compose up -d
```

> Be sure, that port 8000 is open and ready for inbound connections. To change the settings, run the command: sudo ufw allow 8000/tcp

### Upload a DataSet

{% hint style="danger" %}
Please ensure that you create a DataProvider entity in the Marketplace before uploading any datasets. To proceed, please provide your company information [here](https://app.mydatacoin.io/settings).
{% endhint %}

{% hint style="info" %}
Important! The data you upload will not be transferred to us or any third parties; it will be stored in your Docker container.
{% endhint %}

To prepare the data monetization process, you need to prepare a JSON file with data in the format [User Model](for-developers.md#user-model) shown below.

After docker successfully started, you need to open browser and input the following url: http://your\_server\_address:8000/upload, then you'll see following page:

<figure><img src="../../.gitbook/assets/Screenshot 2023-07-17 at 19.10.50.png" alt=""><figcaption><p>Upload json file</p></figcaption></figure>

Put your Secret Token in the **Secret Token** field and give your dataset a name, choose a dataset you've prepared and press Upload.&#x20;

Now you ready to go! Please feel free to ask any questions about integration process. Send us email to as@mydatacoin.io

### User model sample

<details>

<summary>Json User Model</summary>

{% code title="user.json" lineNumbers="true" fullWidth="true" %}
```json5
[
  {
     "profile":{
        "recordId": "1" or "dd3cc469-096f-4b9e-a8fb-ce5ef32c5642",
        "firstName":"John",
        "lastName":"Doe",
        "dateOfBirth":"1999-09-09T00:00:00Z",
        "gender":null,
        "email":[
           "sagynbaev6@mail.com"
        ],
        "phone":[
           
        ],
        "maritalStatus":0,
        "income":0
     },
     "basicData":{
        "interests":null,
        "languages":null,
        "religionViews":null,
        "politicalViews":null
     },
     "contacts":{
        "mobilePhone":null,
        "address":null,
        "linkedAccounts":null,
        "website":null
     },
     "workAndEducation":{
        "placeOfWork":null,
        "skills":null,
        "university":null,
        "faculty":null
     },
     "placeOfResidence":{
        "currentCity":null,
        "birthPlace":null,
        "otherCities":null
     },
     "personalInterests":{
        "briefDescription":null,
        "hobby":null,
        "sport":null
     },
     "deviceInformation":{
        "operatingSystem":null,
        "displayResolution":null,
        "browser":null,
        "iSP":null,
        "adBlock":false
     },
     "cookies":{
        "sessionState":null,
        "language":null,
        "region":null,
        "recentPages":null,
        "shoppingCart":[
           {
              "productId":null,
              "productName":"maxsimus1",
              "productPrice":null,
              "quantity":null,
              "subTotal":null,
              "total":null,
              "couponCode":null,
              "shippingInformation":null,
              "taxInformation":null
           },
           {
              "productId":null,
              "productName":"maxsimus",
              "productPrice":6565,
              "quantity":null,
              "subTotal":null,
              "total":null,
              "couponCode":null,
              "shippingInformation":null,
              "taxInformation":null
           }
        ]
     }
  },
  {
     "profile":{
        "firstName":"Jason",
        "lastName":"Cropp",
        "dateOfBirth":"2002-11-09T00:00:00Z",
        "gender":null,
        "email":[
           "amaymon02@mail.ru"
        ],
        "phone":[
           "+77443332424",
           "+996222334455"
        ],
        "maritalStatus":0,
        "income":0
     },
     "basicData":{
        "interests":null,
        "languages":null,
        "religionViews":null,
        "politicalViews":null
     },
     "contacts":{
        "mobilePhone":"IPHONE13",
        "address":null,
        "linkedAccounts":null,
        "website":null
     },
     "workAndEducation":{
        "placeOfWork":null,
        "skills":null,
        "university":"KNU",
        "faculty":null
     },
     "placeOfResidence":{
        "currentCity":null,
        "birthPlace":"bishkek",
        "otherCities":null
     },
     "personalInterests":{
        "briefDescription":null,
        "hobby":[
           "biohacking"
        ],
        "sport":[
           "boxing"
        ]
     },
     "deviceInformation":{
        "operatingSystem":null,
        "displayResolution":null,
        "browser":null,
        "iSP":null,
        "adBlock":true
     },
     "cookies":{
        "sessionState":null,
        "language":null,
        "region":"chui area",
        "recentPages":null,
     },
     "shoppingCart":[
        {
           "productId":1,
           "productName":"pen",
           "productPrice":12,
           "quantity":2,
           "subTotal":24,
           "total":null,
           "couponCode":null,
           "shippingInformation":null,
           "taxInformation":null
        },
        {
           "productId":2,
           "productName":"cup",
           "productPrice":30,
           "quantity":1,
           "subTotal":null,
           "total":null,
           "couponCode":null,
           "shippingInformation":null,
           "taxInformation":null
        }
     ]
  }
]
```
{% endcode %}

</details>

Model details:

<table><thead><tr><th>Parameter</th><th>Data Type</th><th data-type="checkbox">Nullable</th></tr></thead><tbody><tr><td>Profile</td><td><a href="for-developers.md#profile">Profile</a></td><td>true</td></tr><tr><td>BasicData</td><td><a href="for-developers.md#basicdata">BasicData</a></td><td>true</td></tr><tr><td>Contacts</td><td><a href="for-developers.md#contacts">Contacts</a></td><td>true</td></tr><tr><td>WorkAndEducation</td><td><a href="for-developers.md#workandeducation">WorkAndEducation</a></td><td>true</td></tr><tr><td>PlaceOfResidence</td><td><a href="for-developers.md#placeofresidence">PlaceOfResidence</a></td><td>true</td></tr><tr><td>PersonalInterests</td><td><a href="for-developers.md#personalinterests">PersonalInterests</a></td><td>true</td></tr><tr><td>DeviceInformation</td><td><a href="for-developers.md#deviceinformation">DeviceInformation</a></td><td>true</td></tr><tr><td>Cookies</td><td><a href="for-developers.md#cookies">Cookies</a></td><td>true</td></tr></tbody></table>

#### Profile

<table><thead><tr><th>Parameter</th><th>Data Type</th><th>Comment</th><th data-type="checkbox">Nullable</th></tr></thead><tbody><tr><td>recordId</td><td>string</td><td>Unique identifier of record, you can use your database identifier</td><td>false</td></tr><tr><td>firstName</td><td>string</td><td></td><td>true</td></tr><tr><td>lastName</td><td>string</td><td></td><td>true</td></tr><tr><td>dateOfBirth</td><td>DateTime</td><td>Format(1999-09-09T00:00:00Z)</td><td>false</td></tr><tr><td>gender</td><td>int</td><td><p>Enum</p><pre class="language-csharp"><code class="lang-csharp">0 = Male,
1 = Female
</code></pre></td><td>false</td></tr><tr><td>email</td><td>string[]</td><td></td><td>false</td></tr><tr><td>phone</td><td>string[]</td><td></td><td>true</td></tr><tr><td>maritalStatus</td><td>int</td><td><p><a href="for-developers.md#maritalstatus">MaritalStatus</a></p><pre class="language-json"><code class="lang-json"><strong>0 = Single,
</strong>1 = Married,
2 = Divorced,
3 = Bachelor,
4 = Widow,
5 = Cohabiting,
6 = Separated,
7 = Living_Separately,
8 = Remarried
</code></pre></td><td>true</td></tr><tr><td>income</td><td>decimal</td><td>Income refers to the amount of money a user earns within a certain period of time.</td><td>true</td></tr></tbody></table>

#### BasicData

<table><thead><tr><th>Parameter</th><th>Data Type</th><th data-type="checkbox">Nullable</th></tr></thead><tbody><tr><td>interests</td><td>string[]</td><td>true</td></tr><tr><td>languages</td><td>string[]</td><td>true</td></tr><tr><td>religionViews</td><td>string[]</td><td>true</td></tr><tr><td>politicalViews</td><td>string[]</td><td>true</td></tr></tbody></table>

#### Contacts

<table><thead><tr><th>Parameter</th><th>Data Type</th><th data-type="checkbox"></th></tr></thead><tbody><tr><td>mobilePhone</td><td>string</td><td>true</td></tr><tr><td>address</td><td>string</td><td>true</td></tr><tr><td>linkedAccounts</td><td>string[]</td><td>true</td></tr><tr><td>website</td><td>string</td><td>true</td></tr></tbody></table>

#### WorkAndEducation

<table><thead><tr><th>Parameter</th><th>Data Type</th><th data-type="checkbox">Nullable</th></tr></thead><tbody><tr><td>placeOfWork</td><td>string</td><td>true</td></tr><tr><td>skills</td><td>string[]</td><td>true</td></tr><tr><td>university</td><td>string</td><td>true</td></tr><tr><td>faculty</td><td>string</td><td>true</td></tr></tbody></table>

#### PlaceOfResidence

<table><thead><tr><th>Parameter</th><th>Data Type</th><th data-type="checkbox">Nullable</th></tr></thead><tbody><tr><td>currentCity</td><td>string</td><td>true</td></tr><tr><td>birthPlace</td><td>string</td><td>true</td></tr><tr><td>otherCities</td><td>string[]</td><td>true</td></tr></tbody></table>

#### PersonalInterests

<table><thead><tr><th>Parameter</th><th>Data Type</th><th data-type="checkbox">Nullable</th></tr></thead><tbody><tr><td>breifDescription</td><td>string</td><td>true</td></tr><tr><td>hobby</td><td>string[]</td><td>true</td></tr><tr><td>sport</td><td>string[]</td><td>true</td></tr></tbody></table>

#### DeviceInformation

<table><thead><tr><th>Parameter</th><th width="169">Data Type</th><th>Comments</th><th data-type="checkbox">Nullable</th></tr></thead><tbody><tr><td>deviceName</td><td>string</td><td>Device used to access the internet</td><td>false</td></tr><tr><td>deviceId</td><td>string</td><td>DeviceId is a parameter that refers to a unique identifier for a device.</td><td>true</td></tr><tr><td>operatingSystem</td><td>string</td><td>Operating system and its version</td><td>false</td></tr><tr><td>displayResolution</td><td>string</td><td>Screen resolution</td><td>true</td></tr><tr><td>browser</td><td>string</td><td>Used browser and its version</td><td>false</td></tr><tr><td>iSP</td><td>string</td><td>Information about the internet service provider and type of connection</td><td>true</td></tr><tr><td>adBlock</td><td>bool</td><td>Presence of ad blockers</td><td>true</td></tr></tbody></table>

#### Cookies

<table><thead><tr><th>Parameter</th><th>Data Type</th><th>Comment</th><th data-type="checkbox">Nullable</th></tr></thead><tbody><tr><td>id</td><td>string</td><td>User identifier</td><td>true</td></tr><tr><td>sessionState</td><td>string</td><td>Session state</td><td>true</td></tr><tr><td>language</td><td>string</td><td>Language settings</td><td>true</td></tr><tr><td>region</td><td>string</td><td>Preferred region settings</td><td>true</td></tr><tr><td>recentPages</td><td>string[]</td><td>Recently visited pages</td><td>true</td></tr><tr><td>shoppingCart</td><td><a href="for-developers.md#shoppingcart">ShoppingCart[]</a></td><td>Shopping cart items</td><td>true</td></tr></tbody></table>

#### ShoppingCart

<table><thead><tr><th>Parameter</th><th>Data Type</th><th>Comments</th><th data-type="checkbox"></th></tr></thead><tbody><tr><td>productId</td><td>string</td><td>unique identifier of the product in the shopping cart</td><td>true</td></tr><tr><td>productName</td><td>string</td><td>name of the product in the shopping cart</td><td>false</td></tr><tr><td>productPrice</td><td>string</td><td>price of the product in the shopping cart</td><td>false</td></tr><tr><td>quantity</td><td>string</td><td>the number of units of a product in the shopping cart</td><td>false</td></tr><tr><td>subTotal</td><td>string</td><td>the total cost of a particular product in the shopping cart (quantity x price)</td><td>true</td></tr><tr><td>total</td><td>string</td><td>the total cost of all products in the shopping cart</td><td>false</td></tr><tr><td>couponCode</td><td>string</td><td>any applied discounts or coupons to the shopping cart</td><td>true</td></tr><tr><td>shippingInformation</td><td>string</td><td>shipping method and cost for the items in the shopping cart</td><td>true</td></tr><tr><td>taxInformation</td><td>string</td><td>applicable taxes for the items in the shopping cart</td><td>true</td></tr></tbody></table>

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

### Add Records

How to insert new records into your dataset.

{% swagger method="post" path="/insert" baseUrl="https://your-ip-address:your-port" summary="Inserts new user profile " expanded="true" %}
{% swagger-description %}
All the body parameters described in 

[User Model](for-developers.md#user-model-sample)


{% endswagger-description %}

{% swagger-parameter in="body" required="true" name="profile" type="profile" %}


[This object and it`s fields are described above](for-developers.md#profile)


{% endswagger-parameter %}

{% swagger-parameter in="body" name="basicData" type="basicData" %}


[This object and it`s fields are described above ](for-developers.md#basicdata)


{% endswagger-parameter %}

{% swagger-parameter in="body" name="сontacts" type="contacts" %}


[This object and it`s fields are described above](for-developers.md#contacts)


{% endswagger-parameter %}

{% swagger-parameter in="body" name="workAndEducation" type="workdAndEducation" %}


[This object and it`s fields are described above](for-developers.md#workandeducation)


{% endswagger-parameter %}

{% swagger-parameter in="body" name="placeOfResidence" type="placeOfResidence" %}


[This object and it`s fields are described above](for-developers.md#placeofresidence)


{% endswagger-parameter %}

{% swagger-parameter in="body" name="personalInterests" type="personalInterests" %}


[This object and it`s fields are described above](for-developers.md#personalinterests)


{% endswagger-parameter %}

{% swagger-parameter in="body" name="deviceInformation" type="deviceInformation" %}


[This object and it`s fields are described above](for-developers.md#deviceinformation)


{% endswagger-parameter %}

{% swagger-parameter in="body" name="cookies" type="cookies" %}


[This object and it`s fields are described above](for-developers.md#cookies)


{% endswagger-parameter %}

{% swagger-parameter in="header" name="Authorization" %}
there should be an authorization token that was entered in docker-compose.yml
{% endswagger-parameter %}

{% swagger-response status="200: OK" description="Simple string response" %}
"add user Successfully"
{% endswagger-response %}

{% swagger-response status="400: Bad Request" description="this error is only thrown when the user already exists" %}
`"this user in already have in database"`
{% endswagger-response %}

{% swagger-response status="401: Unauthorized" description="if you have the wrong authorization token which is in your docker-compose.yml" %}
```
# Check if the provided token in the 'Authorization' header does not match the expected 'auth_token'.
# If it doesn't match, return an error response indicating "Invalid token".
# The status code is set to 401 (Unauthorized).

{
    'error': 'Invalid token',
     'details': "The token provided in the 'Authorization' header is invalid"
}
```
{% endswagger-response %}

{% swagger-response status="415: Unsupported Media Type" description="if you don't have application/json in your headers" %}
```
# Check if the 'Content-Type' header of the request is not set to 'application/json'.
# If it's not set correctly, return an error response indicating "Unsupported Media Type".
# The status code is set to 415 (Unsupported Media Type).

{
    'error': 'Unsupported Media Type', 
    'details': "The 'Content-Type' header must be set to 'application/json'"
}
```
{% endswagger-response %}

{% swagger-response status="500: Internal Server Error" description="if an error occurred while loading data into the postgres database" %}
`"An error occurred while processing the data: {}"  and error in brackets`
{% endswagger-response %}
{% endswagger %}
