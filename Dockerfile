# ---- Base Node ----
FROM node:alpine AS base
COPY package.json, yarn.lock*, ./
RUN yarn
# Copy project file
COPY . .
# Build project
RUN yarn build

# ---- Prod ----
FROM nginx
# Copy needed files
COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY --from=base /dist /usr/share/nginx/html
