FROM python:3.11
RUN apt update && \ 
    apt install -y --no-install-recommends graphviz && \
    apt clean && \
    rm -rf /var/lib/apt/lists/*
RUN python3 -m pip install --no-cache-dir --upgrade pip
COPY .inputr[c] .bashr[c] requirements.txt /root/
RUN pip install --no-cache-dir -r /root/requirements.txt