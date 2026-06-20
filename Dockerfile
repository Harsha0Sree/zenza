FROM python:3.12.13
WORKDIR /usr/local/zenza
COPY pyproject.toml uv.lock ./
RUN pip install uv
RUN uv sync --frozen
COPY . . 
CMD ["uv","run","python","manage.py","runserver","0.0.0.0:8000"]