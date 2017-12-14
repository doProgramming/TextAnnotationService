This is a service for annotating text using different colors in the client's
browser. The annotation logic is found in JavaScripts that are executed on
client side, so the service itself focuses on delivering those JavaScripts and
the content to annotate.



A packed war file almost ready to deploy can be found in the "build" folder,
although some additional configuration is necessary.



In the current state it:
* doesn't use a database.
* the admin component doesn't do anything (except say that there is none).
* always provides the same text to annotate.



What is necessary to configure:
* the WEB-INF folder contains a "config.cfg" which specifies where the
  JavaScripts are located on the internet. This has to be configured when
  deploying the service. See the comments in the "config.cfg" for more details.
* the folder INSTALL in WBE-INF contains a JSON configuration for the OMiLAB
  PSM. Adapt it as necessary (urlidentifier, url) and use it.



The JavaScript and HTML content portion of the service has been tested with the
following browsers and worked as desired:
* Mozilla Firefox           56.0.2 (64-Bit)
* Google Chrome             Version 62.0.3202.94 (64-Bit)
* Internet Explorer 11      Version: 11.0.9600.18816