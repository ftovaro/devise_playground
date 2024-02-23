# Simple Devise playground

It has a `user` model.
The Registrations and Sessions controller are being overwritten, for the RegistrationsController the controller is being overwritten to add the role of the user depeding on the user's email.
There are some sessions cookies and browser cookies created in the HomeController.
After the sign in, in the ApplicationController there is a method that redirects depending on the role of the user.
