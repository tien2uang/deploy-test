### Buid Image 
``` console 
$ docker build -t  deploy-all-v2:latest .
```

### Run image 
```
$ docker run -it -p 3000:3000 -p 8080:8080 <image_id>
```
### Create new CLI
```
$ docker exec -it <mycontainer> bash
```

### Run Backend

```console
$ cd server/

$ python3 -m venv venv

$ . venv/bin/activate

$ pip install -r requirement.txt

$ flask run --port=8080  --host=0.0.0.0
```

### Run Frontend

```
$ cd client/

$ npm i

$ npm run build 

$ npm run preview  -- --host

```




