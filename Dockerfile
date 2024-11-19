FROM python:3.9

WORKDIR /app

RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    libmagic1 \
    libmagic-dev \
    libgl1-mesa-glx \
    libglib2.0-0 \
    && rm -rf /var/lib/apt/lists/*
# exposing default port for streamlit
EXPOSE 8501

# copy over requirements
COPY requirements.txt ./requirements.txt

# install pip then packages
RUN pip3 install -r requirements.txt

RUN mkdir -p data/tmp data/vector_store && chmod -R 755 data


# copying all files over
COPY . .

# cmd to launch app when container is run
CMD streamlit run app.py
