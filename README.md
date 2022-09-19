Dev Container Port Forwarding Bug Repro
=======================================

Bug: Ports forwarded from docker processes started inside the container are accesible from the host, but not by other processes inside the container.

1. In VS Code, "Rebuild and Reopen in Container"
2. In a dev container terminal: `./works.sh`.
3. Open `http://localhost:8000` in your browser -- it should load.
4. In a second dev container terminal, run `./test_connectivity.sh` -- it should pass
5. In the first terminal, kill `./works.sh` and run `./broken.sh`
6. Open `http://localhost:8000` in your browser again -- it should still load.
7. In the second terminal, run `./test_connectivity.sh` again -- this time, it will fail.
