# Husky Irrigation — Site Plan

## 1. Business Overview

**Company:** Husky Irrigation
**Location:** Dallas, Texas
**Founded:** 2017
**Specialty:** New irrigation system installations (residential & light commercial)
**Licensed Irrigator:** Rigo Gonzalez — License **# LI0022106** (Texas)
**Contact:** rhg1984@gmail.com

**Brand personality:** Professional but friendly. We look the part of an established, licensed Dallas contractor — but we talk like a neighbor, not a corporation. Trust, craftsmanship, local pride.

**Brand assets:**
- Logo (horizontal lockup): husky head inside a blue water-drop swoosh, with "HUSKY IRRIGATION" in heavy italic black type
- Logo (mark only): husky + water-drop, no text
- Core palette: vibrant blues (water-drop gradient), deep navy/black (typography), white background

## 2. Business Goals

1. **Rank high in local SEO** for terms like:
   - "irrigation installation Dallas"
   - "sprinkler system installation Dallas TX"
   - "licensed irrigator Dallas"
   - "new sprinkler system [neighborhood] Dallas"
   - "drip irrigation Dallas"
2. **Capture leads** with two frictionless paths:
   - **Email** contact form (Formspree / Netlify Forms / similar)
   - **Text-to-lead** — tap-to-SMS link on mobile (`sms:` URI) that prefills a message
3. **Signal legitimacy** — license number, years in business (since 2017), Dallas location, and professional photography visible above the fold on every page.

## 3. SEO Requirements (apply to every page)

- `<title>` format: `{Page Topic} | Husky Irrigation — Licensed Dallas Irrigator (LI0022106)`
- Meta description: 150–160 chars, mentions Dallas + new installation + licensed
- Open Graph tags (og:title, og:description, og:image with logo)
- LocalBusiness JSON-LD schema on every page:
  - `@type`: "Plumber" or "LocalBusiness" (use "HomeAndConstructionBusiness")
  - `name`, `address` (Dallas, TX), `telephone`, `email`
  - `priceRange`, `areaServed` (Dallas + surrounding suburbs)
  - `founder` → Rigo Gonzalez
  - `license` → LI0022106
- Semantic HTML: single `<h1>` per page, logical `<h2>`/`<h3>` hierarchy
- Image `alt` text describing the scene (never "image1.jpg")
- Internal links between related pages (services ↔ about ↔ contact)
- `sitemap.xml` and `robots.txt` at site root
- Fast load: compressed images (WebP), no render-blocking scripts
- Mobile-first responsive — Google indexes mobile

## 4. Sitemap

Pages marked `[x]` are built. `[ ]` are pending.

- [x] **index** — Home
- [x] **services** — New Installation (hero service page)
- [x] **contact** — Contact form + text-to-quote + license info (hand-built after Stitch stalled)
- [x] **about** — About Husky / Rigo's story + license (hand-built after Stitch stalled)
- [x] **service-area** — Dallas + neighborhoods served (hand-built after Stitch stalled)
- [x] **process** — How a new install works, step-by-step (hand-built after Stitch stalled)

## 5. Roadmap (build order)

1. ~~`index` — Home~~ ✅
2. ~~`services` — New installation deep dive~~ ✅
3. ~~`contact` — Email form + SMS tap-to-text + license / hours~~ ✅ (hand-built)
4. ~~`about` — Rigo's story, license, 2017-founded credibility~~ ✅ (hand-built)
5. ~~`service-area` — Dallas neighborhoods + suburbs list (strong local SEO play)~~ ✅ (hand-built)
6. ~~`process` — "What to expect" — demystifies the install for homeowners~~ ✅ (hand-built)

## 6. Creative Freedom (backlog ideas)

- `gallery` — Before/after photos of completed installs
- `faq` — Common homeowner questions (water bill, permit, winterization)
- `drip-irrigation` — Dedicated sub-service page (targets drip keyword)
- `smart-controllers` — Wi-Fi controller installs (Rachio, Hunter Hydrawise)
- `commercial` — Light commercial capabilities
- `reviews` — Google review testimonials carousel
- `blog/watering-schedule-dallas` — Seasonal watering guide (SEO long-tail)

## 7. Global Elements (every page must have)

**Header:**
- Logo (husky + water-drop mark, link to `/`)
- Nav: Home · Services · Service Area · About · Contact
- Phone / "Text Us" button on the right (desktop) / hamburger (mobile)

**Footer:**
- Logo + tagline
- Address / Service area: Dallas, TX
- Email: rhg1984@gmail.com
- **Licensed Irrigator: Rigo Gonzalez — LI0022106**
- Since 2017
- Quick links (mirror nav)
- Social icons (placeholders OK until accounts exist)
- Copyright © {current year} Husky Irrigation

**CTA bar (above footer):**
- "Ready for a new sprinkler system? [Text us] [Email a photo of your yard]"
- SMS link uses `sms:+1XXXXXXXXXX?&body=Hi%20Rigo%2C%20I%27d%20like%20a%20quote%20for%20a%20new%20irrigation%20system.`

## 7.5 Social Proof & Reviews

Husky Irrigation has **32 five-star reviews** (5.0 aggregate, 100% 5-star, zero complaints since 2018) across Thumbtack (10) and HomeAdvisor (22), also listed on Angi and the BBB.

- **Source file:** `.stitch/content/reviews.json` — use this as the canonical source on every page that surfaces testimonials.
- **Home page:** Dedicated testimonials section between Service Area and Final CTA (shipped).
- **Services page:** Weave 1–2 short quotes as pull-outs between service detail blocks.
- **About page:** Lead with the 5.0 rating and link to all 4 review platforms.
- **Contact page:** Small trust strip near the form: "5.0★ · 10 reviews on Thumbtack, HomeAdvisor, Angi".
- **JSON-LD:** Every page's `<head>` should include an `aggregateRating` block on the LocalBusiness schema — `ratingValue: 5`, `reviewCount: 32`, `bestRating: 5`.
- **Review platform URLs (link out with rel="noopener" target="_blank"):**
  - Thumbtack: https://www.thumbtack.com/tx/rockwall/irrigation-system-companies/husky-irrigation/service/383503508473954304
  - HomeAdvisor: https://www.homeadvisor.com/rated.RigoGonzalezIrrigation.49869462.html
  - Angi: https://www.angi.com/companylist/us/tx/garland/rigo-gonzalez-irrigation-reviews-1.htm
  - BBB: https://www.bbb.org/us/tx/garland/profile/irrigation-design/rigo-gonzalez-irrigation-0875-91036610

## 8. Tone & Copy Guardrails

- Say "new installation" — not "installations" or "install solutions"
- Say "licensed" often — it's the #1 trust signal vs. unlicensed competitors
- Use "we" not "I" — reads more established
- Friendly but not cutesy. No emojis in copy. No exclamation-point spam.
- Avoid SEO-keyword stuffing in body copy — write for humans, use keywords in H1/H2/meta

## 9. Stitch Project

- **Stitch Project ID:** `5238427569609430996`
- **Project URL:** https://stitch.withgoogle.com/project/5238427569609430996
- **Device type:** DESKTOP (desktop-first, but pages must be mobile responsive)
- **Design system doc:** `.stitch/DESIGN.md` ✅ generated
- **Screens generated:**
  - `index` — Husky Irrigation Professional Homepage (`7b74b1ed6ea34d76812cc385af5a849b`) — 2560×10134
  - `index-v1` — first-pass alternative (`153c8ed95924435eaf11e326222686d0`) — 2560×10444
  - `services` — Services Detail Page (`7e32f0184355420a96c485f833bcfcf0`) — 2560×13188
  - `services-v2` — alternate layout (`18ca90e4fc15410180c01792a59d5f56`) — 2560×13188
  - `contact` — hand-built (Stitch generation stalled after 3 attempts) at `site/public/contact.html`
  - `about` — hand-built (Stitch generation stalled after 3 attempts) at `site/public/about.html`
  - `service-area` — hand-built (Stitch stalled) at `site/public/service-area.html`
  - `process` — hand-built (Stitch stalled) at `site/public/process.html`
