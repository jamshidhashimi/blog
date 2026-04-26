# jamshidhashimi.com

The source of [jamshidhashimi.com](https://jamshidhashimi.com) — a Hugo static site, content authored in Markdown, deployed via Docker on a Coolify host.

## Writing a post

Posts live in `content/posts/`. Each is a markdown file with TOML/YAML frontmatter. The simplest possible post:

```markdown
---
title: "A new post"
date: 2026-04-25T10:00:00-08:00
slug: a-new-post
categories: ["Programming General"]
tags: ["hugo", "writing"]
---

Write your post here. Standard markdown — headings, lists, links, code blocks, images.

![alt text](/images/posts/a-new-post/screenshot.png)
```

Save the file in `content/posts/a-new-post.md`. If the post has images, drop them under `static/images/posts/a-new-post/` and reference them as `/images/posts/a-new-post/foo.png`.

To preserve old WordPress URLs that already pointed at this slug, the site is configured so `/a-new-post/` is the canonical URL. If you want extra redirects (e.g. an old dated path), add an `aliases` field to the frontmatter:

```yaml
aliases: ["/2014/02/03/old-path/"]
```

Commit and push to `main`. Coolify will rebuild and redeploy.

## Local development

You'll need [Hugo Extended](https://gohugo.io/installation/) installed locally (v0.124+).

```sh
hugo server --buildDrafts --buildFuture
```

Then open http://localhost:1313.

To produce a production build into `public/`:

```sh
hugo --minify --gc
```

## Deploying with Coolify

1. In Coolify, create a new application from this Git repo.
2. Choose **Dockerfile** as the build pack.
3. Coolify will build using the included `Dockerfile` (a 2-stage build: Hugo compiles the site, nginx serves it).
4. Set the public domain to `jamshidhashimi.com` (or a subdomain) and let Coolify provision a TLS certificate via Let's Encrypt.
5. Push to `main` to trigger a redeploy.

The container exposes port 80. Health check is included.

## Project layout

```
.
├── hugo.toml              # site config
├── content/
│   ├── about.md           # /about/ page
│   └── posts/             # one file per post
├── static/
│   └── images/
│       ├── jamshid.jpg    # author photo
│       └── posts/{slug}/  # per-post inline images
├── layouts/               # custom theme (no external theme)
│   ├── _default/
│   ├── partials/
│   └── index.html
├── assets/
│   └── css/main.css       # main stylesheet (Hugo Pipes processed)
├── Dockerfile             # build & serve config for Coolify
├── nginx.conf             # nginx config for the serve stage
└── README.md
```

## Migration notes

This site was migrated from a WordPress install in April 2026. 85 posts were imported; categories and tags preserved. Comments (Disqus) were intentionally not carried over.

About 60 of the older posts (mostly 2010–2012) referenced images on TinyPic and ImageShack — both image hosts have shut down, so those images are no longer available. They are flagged inline in the affected posts as `*[image no longer available]*`.

## License

Posts are © Jamshid Hashimi unless noted otherwise. Code samples are released under the MIT license; you are free to use them.
