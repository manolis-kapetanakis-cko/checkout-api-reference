Pay to bank notes
=================

- Need to discuss amount/currency and destination/source amount currency. Understand the goal is to be able to specify a payout in the destination currency or in the source currency i.e.
  1. Send 100 GBP from a GBP currency account to USD, or
  2. Send 100 USD from a GBP curency account to USD

It should not be necessary to specify the source currency as this will always be the currency associated with the currency account.

Scenario 1: Same source and destination currency

{
    "amount": 10000,
    "currency": "GBP"
    "source": {
        "type": "currency_account",
        "id": "ca_xxx"
    },
    "destination": {
        "type": "bank_account",
        "account_number": "032180000118359719",
        "SWIFT": "BNMXMXMM",
        "first_name": "Juan",
        "last_name": "Smith",
        "country": "MX"
    }
}

Scenario 2: Different payout currency, amount in source currency

{
    "amount": 10000,
    "currency": "GBP",
    "source": {
        "type": "currency_account",
        "id": "ca_xxx" // GBP account
    },
    "destination": {
        "type": "bank_account",
        "currency": "USD",
        "account_number": "032180000118359719",
        "SWIFT": "BNMXMXMM",
        "first_name": "Juan",
        "last_name": "Smith",
        "country": "MX"
    }
}

Scenario 3: Different payout currency, amount in destination currency

{
    "amount": 10000,
    "currency": "USD",
    "source": {
        "type": "currency_account",
        "id": "ca_xxx" // GBP account
    },
    "destination": {
        "type": "bank_account",
        "account_number": "032180000118359719",
        "SWIFT": "BNMXMXMM",
        "first_name": "Juan",
        "last_name": "Smith",
        "country": "MX"
    }
}

In short, the root `currency` field is always the destination currency unless a `destination.currency` is provided. This allows for conversions.
