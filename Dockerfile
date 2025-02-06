FROM Hrishi2861/Z-mirror-Modified

WORKDIR /usr/src/app
RUN chmod 777 /usr/src/app

COPY requirements.txt .
RUN zee_env/bin/pip3.12 install --no-cache-dir -r requirements.txt

COPY . .

CMD ["bash", "start.sh"]