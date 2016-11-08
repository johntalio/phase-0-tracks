* What are some common HTTP status codes?

Here are some common HTTP status codes (from smartlabsoftware.com):
200 OK - The request has succeeded.

300 Multiple Choices - The requested resource has different choices and cannot be resolved into one.

301 Moved Permanently - The requested resource has been assigned a new permanent URI and any future references to this resource should use one of the returned URIs.

404 Not Found - The server has not found anything matching the Request-URI.

403 Forbidden - The server understood the request, but is refusing to fulfill it.

401 Unauthorized - The request requires user authentication.

* What is the difference between a GET request and a POST request? When might each be used?

A GET request requests data from a specified resource, while a POST request submits data to be processed to a specified resource. Use POST for destructive actions such as editing, deleting, and creation. Use GET when it's safe to allow a person to call an action. POST is also more secure than GET, because you aren't sticking information into a URL. Therefore, using GET as the method for an HTML form that collects a password or other sensitive information is not a good idea. POST can also submit a larger amount of information than GET.

* What is a cookie? How does it relate to HTTP requests?

An HTTP cookie is a small piece of data sent from a website and stored on the user's computer by the user's web browser while the user is browsing. Cookies were designed to be a reliable mechanism for websites to remember stateful information (items added to a shopping cart, login status, browsing history, etc.). (From Wikipedia.) Therefore, without cookies, a site may not know information about a user without which the site cannot properly perform its function. For instance, without authentication cookies, web servers would be unable to determine whether a user is logged in or not, and which account they are logged in with.