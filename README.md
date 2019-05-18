# 3yibao-server
[![](https://images.microbadger.com/badges/version/valorad/3yibao.svg)](https://microbadger.com/images/valorad/3yibao "Get your own version badge on microbadger.com") [![](https://images.microbadger.com/badges/image/valorad/3yibao.svg)](https://microbadger.com/images/valorad/3yibao "Get your own image badge on microbadger.com")

back-end for [3yibao](https://github.com/valorad/3yibao-react)

# Deployment
``` bash
  docker run -d -p 3399:3399 \
  --name 3yibao-c1 \
  -e EXEC_USER=$USER -e EXEC_USER=$UID \
  valorad/3yibao

  # inspect id
  docker inspect 3yibao-c1 | grep '"IPAddress"' | head -n 1
```