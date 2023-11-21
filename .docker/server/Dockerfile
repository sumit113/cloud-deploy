# base image
FROM node:16.15.1-slim

# Copy application dependency manifests to the container image.
# A wildcard is used to ensure copying both package.json AND package-lock.json (when available).
# Copying this first prevents re-running npm install on every code change.

COPY . .

# Create and change to the app directory.

WORKDIR services/server/


# Install production dependencies..
# If you add a package-lock.json, speed your build by switching to 'npm ci'.
RUN npm ci

RUN npm run build

CMD ["npm", "start"]
