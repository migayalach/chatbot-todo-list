FROM python:3.10-slim

WORKDIR /app
COPY . /app

RUN pip install --no-cache-dir numpy nltk keras tensorflow

RUN python -m nltk.downloader punkt punkt_tab wordnet omw-1.4

RUN python training.py

CMD ["python", "chatbot.py"]
