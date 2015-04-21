# docker-ui
A CloudAtCost UI for deploying, accessing, using CloudPro features and modifying your servers.

# usage
Requirements: *Docker*

In order to deploy, you need to gather your API credentials as well as white-list the IP you're accessing it from. For more information about the API and where you can find your personal information, please view [github.com/cloudatcost/api](https://github.com/cloudatcost/api) or access your personal details at [panel.cloudatcost.com](https://panel.cloudatcost.com).

The most ideal way of deploying the internal CloudAtCost UI is through Docker. We provide a pre-made template of this on Ubuntu 14.04. This one-liner command will download and deploy a local instance of the UI on port 8080. Fill out your environment variables with your API credentials as well as a password and username for basic HTTP authentication.

```bash
sudo docker run --name cloudatcost -p 8080:8080 -d \
-e CAC_API_KEY=YOURKEYHERE \
-e CAC_API_LOGIN=example@example.com \
-e CAC_BASIC_HTTP_PASS=password \
-e CAC_BASIC_HTTP_USER=username \
cloudatcost/ui
```

You should now see the container running on your local/vps machine and accessible at localhost:8080

```bash
❯ sudo docker ps
CONTAINER ID        IMAGE                   COMMAND                CREATED             STATUS              PORTS                            NAMES
a095d590b027        cloudatcost/ui:latest   /bin/sh -c 'bundle e   12 seconds ago      Up 12 seconds       80/tcp, 0.0.0.0:8080->8080/tcp   cloudatcost         
```


# preview

![img](http://i.imgur.com/rjUNieo.png)
![img](http://i.imgur.com/FTjXWq0.png)
