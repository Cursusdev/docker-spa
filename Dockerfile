# ---- Base Node ----
FROM node:12-slim AS base
COPY package.json yarn.lock ./
RUN yarn
# Copy project file
COPY . ./
# Build static files
RUN yarn build

# ---- Prod ----
FROM nginx
# Copy needed files
COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY --from=base /dist /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]