# Template Onboarding Process API

# License Agreement 
This template is subject to the conditions of the [MuleSoft License Agreement](https://s3.amazonaws.com/templates-examples/AnypointTemplateLicense.pdf). Review the terms of the license before downloading and using this template. You can use this template for free with the Mule Enterprise Edition, CloudHub, or as a trial in Anypoint Studio.
# Use Case

As a new Healthcare API Led Connectivity Web Portal user I want a microservice to execute the signup process.

This template should serve as a foundation for implementing an API for Signing up a new Web Portal user. API is defined using [RAML](https://docs.mulesoft.com/anypoint-platform-for-apis/walkthrough-design-existing#about-raml) and this implementation uses [APIkit](https://docs.mulesoft.com/anypoint-platform-for-apis/apikit-basic-anatomy#basic-anatomy). The Onboarding Process API retrieves credentials and patient data from the Portal Experience API and checks the Identity Service if the login is available. If it is available the API triggers creation of Patient from the underlying microservices defined in EHR to FHIR System API in JSON following the FHIR specification [version 3.0.1 STU3](https://www.hl7.org/FHIR/index.html) and new user with the specified credentials and Patient ID will be created in the Identity Service. If the login is not available user will be notified about that and able to choose the different login name.

The Onboarding Process API is part of the Healthcare Templates Solution and it is triggered by the Portal Experience API.

# Considerations 

To make this template run, there are certain preconditions that must be considered. Failing to do so could lead to unexpected behavior of the template.

## APIs Security Considerations 
This Process API is meant to be deployed within a CloudHub and managed using the API Platform Manager.

### Exposing External Endpoints with HTTPS

- It is triggered by the Portal Experience API using HTTPS

### Exposing Internal Endpoints with RAML and HTTP
- It is interconnected internally with EHR to FHIR System API and Identity Service API using HTTP

# Run it!
Simple steps to get Onboarding Process API running.
See below.

## Run On Premises 
In this section we detail the way you should run your template on your computer.

### Where to Download Anypoint Studio and the Mule Runtime

If you are new to Mule, download this software:

- [Download Anypoint Studio](https://www.mulesoft.com/platform/studio)
- [Download Mule runtime](https://www.mulesoft.com/lp/dl/mule-esb-enterprise)

### Import an Template into Studio
Mule Studio offers several ways to import a project into the workspace, for instance: 

- Anypoint Studio Project from File System
- Packaged mule application (.jar)

You can find a detailed description on how to do so in this [Documentation Page](http://www.mulesoft.org/documentation/display/current/Importing+and+Exporting+in+Studio).

### Run in Studio

After opening your template in Anypoint Studio, follow these steps to run it:

1. Locate the properties file `mule.dev.properties`, in src/main/resources.
2. Complete all the properties in the "Properties to Configure" section.
3. Right click the template project folder.
4. Hover your mouse over `Run as`.
5. Click `Mule Application (configure)`.
6. Inside the dialog, select Environment and set the variable `mule.env` to the value `dev`.
7. Click `Run`.

### Run on Mule Stand Alone
Add properties to a property file, for example in mule.prod.properties, and run your application with an environment variable for each property. In this example, use `mule.env=prod`.

## Run on Runtime Manager
When creating your application in Runtime Manager, click an application and click **Manage Application > Properties** to set the environment variables described in the Properties to Configure section.

## Deploy in CloudHub
In Studio, right click your project name in Package Explorer and select Anypoint Platform > Deploy on CloudHub.

## Properties to Configure
To use this template, configure properties in a properties file or in Runtime Manager as environment variables.

###API Calls Configuration

- api.identity.service.host `identity-service-api-host.com`
- api.identity.service.basepath `/api`
- api.identity.service.port `80`
- api.ehr2fhir.system.host `ehr2fhir-system-api.cloudhub.io`
- api.ehr2fhir.system.basepath `/api`
- api.ehr2fhir.system.port `80`
- api.ehr2fhir.system.protocol `HTTP`
- api.sfhc2fhir.system.host `sfhc2fhir-system-api.cloudhub.io`
- api.sfhc2fhir.system.basepath `/api`
- api.sfhc2fhir.system.port `80`
- api.sfhc2fhir.system.protocol `HTTP`
