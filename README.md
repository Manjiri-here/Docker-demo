Docker multi stage build:

Command : $ docker build -t my-profile:dev .

<img width="447" height="150" alt="Screenshot 2025-08-21 at 11 15 57 AM" src="https://github.com/user-attachments/assets/d1ce1c6d-1a71-4533-9ff5-8d023836e85d" />

Docker images is built suvvessfully but there is some error in docker run-

ubuntu@ip-172-31-24-109:~$ docker run my-profile:dev
/bin/sh: 1: source: not found

---

my_profile:

ubuntu@ip-172-31-69-95:~$ docker pull manjirinaik/my_profile:v1
v1: Pulling from manjirinaik/my_profile
1733a4cd5954: Pull complete
9fd9e26f8f28: Pull complete
004f0aa18a07: Pull complete
7bceabe27cdf: Pull complete
3de40534cbfb: Pull complete
55f61fcba7e8: Pull complete
1ce78c854fa2: Pull complete
8e5ad0201de0: Pull complete
Digest: sha256:be3fc198cb02946706559ea7edeb4d5db01689fc52fe927e353cdf322f3dab60
Status: Downloaded newer image for manjirinaik/my_profile:v1
docker.io/manjirinaik/my_profile:v1

ubuntu@ip-172-31-69-95:~$ docker run -p 8000:8000 manjirinaik/my_profile:v1
Watching for file changes with StatReloader
[17/Dec/2025 06:56:03] "GET / HTTP/1.1" 200 601
[17/Dec/2025 06:56:04] "GET / HTTP/1.1" 200 601
Not Found: /favicon.ico
[17/Dec/2025 06:56:04] "GET /favicon.ico HTTP/1.1" 404 2467
Not Found: /favicon.ico
[17/Dec/2025 06:56:05] "GET /favicon.ico HTTP/1.1" 404 2467
