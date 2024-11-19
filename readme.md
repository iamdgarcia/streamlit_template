# Streamlit template

![app](images/app.gif)

---

## Setup instructions


### Getting up and running locally

```shell
$ git clone https://github.com/iamdgarcia/streamlit-template.git
$ cd streamlit-template/
$ docker image build -t streamlit:app .
$ docker container run -p 8501:8501 -d streamlit:app
```

Then, the web app will be available at `http://localhost:8501/`

To shut down the web app when you're done, you can find the process running your container with

```shell
$ docker ps | grep 'streamlit:app'
6d1871137019        streamlit:app       "/bin/sh -c 'streaml…"   8 minutes ago       Up 8 minutes        0.0.0.0:8501->8501/tcp   <weird_name>
```

Then stop that process with the following command.

```shell
$ docker kill <weird_name>
<weird_name>
$
```

### Deploying to the cloud

TODO