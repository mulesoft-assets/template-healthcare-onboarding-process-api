%dw 1.0
%output application/json
---
{
  "resourceType": "Patient",
  "name": [{
    "use": "official",
    "family": [
      flowVars.patientData.name.family
    ],
    "given": [
      flowVars.patientData.name.given
    ],
    "prefix": [
      flowVars.patientData.name.prefix
    ],
    "suffix": [
      flowVars.patientData.name.suffix
    ]
  }],
  "telecom": [
    {
      "system": "phone",
      "value": flowVars.patientData.phone,
      "use": "home"
    }
  ],
  "address": [
    {
      "resourceType": "Address",
      "line": [
        flowVars.patientData.address.line
      ],
      "city": flowVars.patientData.address.city,
      "district": flowVars.patientData.address.district,
      "state": flowVars.patientData.address.state,
      "postalCode": flowVars.patientData.address.postalCode,
      "country": flowVars.patientData.address.country
    }
  ],
  "careProvider": [
    {
      "reference": ["Practitioner", flowVars.patientData.careProvider] joinBy "/"
    }
  ]
}