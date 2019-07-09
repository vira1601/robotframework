FROM ubuntu:latest

# RUN apt-get update && apt-get install -y --no-install-recommends apt-utils
RUN apt-get update && apt-get install -y \
    software-properties-common
RUN add-apt-repository universe
RUN apt-get update && apt-get install -y \
    curl \
    git \
    python2.7 \
    python-pip
RUN apt-get install unzip
RUN apt-get install -y wget
RUN apt-get install -y firefox
# RUN apt-get update && apt-get install google-chrome-stable
# RUN dpkg -i google-chrome-stable_current_amd64.deb
# RUN apt-get install -y chromium-browser
RUN apt-get install -y xvfb
RUN pip install pyvirtualdisplay

# Install Chrome for Selenium
RUN curl https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -o /chrome.deb
RUN dpkg -i /chrome.deb || apt-get install -yf
RUN rm /chrome.deb

# Install geckodriver
RUN wget https://github.com/mozilla/geckodriver/releases/download/v0.21.0/geckodriver-v0.21.0-linux64.tar.gz
RUN tar xfz geckodriver-v0.21.0-linux64.tar.gz
RUN cp geckodriver /usr/bin/

# Install chrome driver
RUN wget https://chromedriver.storage.googleapis.com/2.41/chromedriver_linux64.zip
RUN unzip chromedriver_linux64.zip
RUN cp chromedriver /usr/bin/

RUN pip install robotframework
RUN pip install robotframework-sshlibrary
RUN pip install robotframework-seleniumlibrary
RUN pip install psycopg2
RUN pip install psycopg2-binary
RUN pip install chromedriver_installer
RUN pip install -U requests
RUN pip install -U robotframework-requests
RUN pip install -U robotframework-jsonlibrary
RUN pip install -U robotframework-faker

ADD . /app
RUN chmod +x  /app/run.sh
WORKDIR /app
CMD ["./run.sh"]
