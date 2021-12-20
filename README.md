Steps to implement omniauth twitter or any other provider

1. bundle add omniauth-provider gem and omniauth_csrf_protection gem
2. add configuration to config file, i.e. ADD provider token and secret key
3. add a refernce link to the provider, ex link_to, button_to with method as post
4. add a routes to receive callback from provider and controller to create the appropriate action.
5. save the user info into database to complete the login.
