# Vor Web — Recruiter & Candidate Marketplace Portal

Static vanilla HTML/Tailwind/ES-module web frontend served via Nginx. Proxies `/api/*`, `/health`, and `/ws` directly to `vor-backend`.

## Running with Docker

```bash
docker compose up --build -d
```

Listens on port `8081` by default (leaving `8080` free for `vordenker-portfolio`).

To point at a non-default backend upstream:

```bash
BACKEND_UPSTREAM=http://127.0.0.1:8000 docker compose up --build -d
```

## Cloudflare Tunnel (`vordenker.work`)

Point a subdomain (e.g. `vor.vordenker.work`) to `http://127.0.0.1:8081`. Because Nginx reverse-proxies `/api/` and `/ws` on the same origin, HTTPS and WSS work automatically with zero CORS issues.

## Local Dev Override

If opening locally without Nginx (e.g. VS Code Live Server on `:5500`), API requests default to `http://127.0.0.1:8000`. You can also override the API base in browser DevTools:

```js
localStorage.setItem('vor_api_url', 'http://100.68.27.101:8000')
```
