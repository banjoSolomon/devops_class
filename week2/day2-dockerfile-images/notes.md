# Day 2 - Writing Dockerfiles & Building Images

## Dockerfile Instructions
| Instruction | Purpose |
|-------------|---------|
| `FROM` | Base image to build on |
| `WORKDIR` | Set working directory inside container |
| `COPY` | Copy files from host to image |
| `ADD` | Like COPY but supports URLs and tar extraction |
| `RUN` | Execute commands during build |
| `ENV` | Set environment variables |
| `EXPOSE` | Document the port the app listens on |
| `CMD` | Default command to run (can be overridden) |
| `ENTRYPOINT` | Main process (harder to override) |
| `ARG` | Build-time variables |
| `VOLUME` | Declare a mount point |
| `USER` | Set the user to run as |

## Best Practices
- Use official base images (alpine when possible — smaller)
- Combine RUN commands with `&&` to reduce layers
- Put rarely-changed instructions first (cache optimization)
- Never put secrets in Dockerfiles
- Use `.dockerignore` to exclude files
- Run as non-root user

## Layer Caching Example
```dockerfile
# BAD - code change invalidates dependency install
COPY . .
RUN npm install

# GOOD - dependencies cached unless package.json changes
COPY package*.json ./
RUN npm install
COPY . .
```

## CMD vs ENTRYPOINT
```dockerfile
# CMD - default args, can be replaced
CMD ["nginx", "-g", "daemon off;"]

# ENTRYPOINT - the actual executable
ENTRYPOINT ["python"]
CMD ["app.py"]      # default arg to python, can override
```
