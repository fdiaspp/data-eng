# Docker dev images

Images used during devleopment. With VS Code, it´s possible to connect to this environment and do develop within this eferal-virtual machine.
With JetBrains's Pycharm it's possible to use docker as development environ.

[for more, on VSCode, click here](https://code.visualstudio.com/docs/devcontainers/containers)
[for more on Pycharm, click here](https://www.jetbrains.com/help/pycharm/using-docker-as-a-remote-interpreter.html)

### How to use:
During Docker's build, use `--build-arg REQUIREMENTS` to pass commands to `pip install`. It can be 
or a `requirements.txt` file, as shown below, or the lib that you want to install.

e.g.:
```sh
docker build -t python:latest \
--build-arg REQUIREMENTS="-r requirements.txt" \
-f python.dockerfile .
```