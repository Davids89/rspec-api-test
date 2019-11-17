# README

This is a pet projecto to teach how a Ruby on Rails API Rest works.

The link to the slides is [here](https://docs.google.com/presentation/d/1xa_ulU-eyycvmfyJsRIyWK3E-8XSpnWmGQv3PHrvOxY/edit?usp=sharing).

The project simulates a library, where the users can take some books. Each operation is registered in the database and has associated an user, a book and a operation type (purchase or sale).

## Models

- Users: the users has access to the library with an email and a password.
- Book: has a name, an editorial, and a year of publication.
- Operation: is the record of a sale or a purchase.
- Operation type: is the type of operation that the library allow.
