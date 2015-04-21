# docker-ui
Cloud at Cost UI Docker Image and deployment usage

# usage
```bash
sudo docker run --name cloudatcost -p 8080:8080 -d \
-e CAC_API_KEY=YOURKEYHERE \
-e CAC_API_LOGIN=example@example.com \
-e CAC_BASIC_HTTP_PASS=password \
-e CAC_BASIC_HTTP_USER=username \
cloudatcost/ui
```
