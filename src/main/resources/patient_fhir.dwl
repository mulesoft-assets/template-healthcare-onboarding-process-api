%dw 2.0
output application/json
---
{
  "resourceType": "Patient",
  "name": [{
    "use": "official",
    "family": [
      vars.patientData.name[0].family[0]
    ],
    "given": [
      vars.patientData.name[0].given[0]
    ],
    "prefix": [
      vars.patientData.name[0].prefix[0]
    ],
    "suffix": [
      vars.patientData.name[0].suffix[0]
    ]
  }],
  "telecom": [
    {
      "system": "phone",
      "value": vars.patientData.phone,
      "use": "home"
    }
  ],
  "birthDate": vars.patientData.birthDate,
  ("gender": vars.patientData.gender) if (vars.patientData.gender != null),
  "address": [
    {
      "resourceType": "Address",
      "line": [
        vars.patientData.address.line[0][0]
      ],
      "city": vars.patientData.address.city[0],
      "district": vars.patientData.address.district[0],
      "state": vars.patientData.address.state[0],
      "postalCode": vars.patientData.address.postalCode[0],
      "country": vars.patientData.address.country[0]
    }
  ],
  "generalPractitioner": vars.patientData.generalPractitioner
} 