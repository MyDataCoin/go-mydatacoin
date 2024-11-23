---
description: >-
  In this section, you will find information on how to integrate with the
  service for providing legal consent for the transfer and processing of
  personal data.
icon: landmark
---

# For Data Сonsumers

{% hint style="info" %}
**Disclaimer:** The development team is working diligently, and the documentation will be updated with each new release.
{% endhint %}

{% hint style="danger" %}
This functionality is available only on the territory of the Kyrgyz Republic.
{% endhint %}

Beforre you start you need to get an Authorization Token(Bearer). Please talk to our team to obtain the token.

If you need to get a consent from user, you need to create an application first. To do that you need to make a POST request.

{% swagger src="../.gitbook/assets/swagger.json" path="/api/v1/Application/create-application" method="post" %}
[swagger.json](../.gitbook/assets/swagger.json)
{% endswagger %}

Once the application is created, you must wait for the user to provide their official consent. While waiting you might request status of application.

{% swagger src="../.gitbook/assets/swagger.json" path="/api/v1/Application/get-application-by-id/{id}" method="get" %}
[swagger.json](../.gitbook/assets/swagger.json)
{% endswagger %}

Also you can get appliction by its application number.

{% swagger src="../.gitbook/assets/swagger.json" path="/api/v1/Application/get-application-by-application-number" method="get" %}
[swagger.json](../.gitbook/assets/swagger.json)
{% endswagger %}

