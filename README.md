Docker multi stage image:

Command : $ docker build -t my-profile:dev .

<img width="447" height="150" alt="Screenshot 2025-08-21 at 11 15 57 AM" src="https://github.com/user-attachments/assets/d1ce1c6d-1a71-4533-9ff5-8d023836e85d" />

Docker images is built suvvessfully but there is some error in docker run-

ubuntu@ip-172-31-24-109:~$ docker run my-profile:dev
/bin/sh: 1: source: not found
