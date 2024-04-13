FROM python:3.12-alpine

RUN pip install requests
RUN pip install pytz


ADD entrypoint.sh /entrypoint.sh
ADD aoc-badges.py /aoc-badges.py

RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
