FROM python:3.10-slim

WORKDIR /usr/src/app

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

RUN pip install poetry
COPY poetry.lock pyproject.toml /usr/src/app/
RUN poetry config virtualenvs.create false && \
    poetry install --no-interaction

COPY . .

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
