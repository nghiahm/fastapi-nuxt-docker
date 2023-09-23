# Docker, FastAPI, NuxtJS, Nginx, MongoDB

## Usage
### Installation
```bash
# Build project
make build

# Run project
make start

# Install backend packages
make poetry_add cmd="{package_name}"

# Install frontend packages
make yarn_add cmd="{package_name}"
```
### Tips
```bash
# Kill port already in use
npx kill-port ${port}
```