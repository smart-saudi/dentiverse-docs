# DentiVerse

> **"Uber for Dental Design Services"** — A global marketplace connecting dental clinics and labs with professional dental CAD designers.

---

## What is DentiVerse?

DentiVerse is an online platform that connects dental professionals who need prosthetic designs (crowns, bridges, implants, veneers) with skilled CAD designers who can create them digitally — on demand, with full transparency.

**The core loop:** Upload scan → Choose designer → Review in 3D → Pay on approval → Download files for manufacturing.

---

## Repository Structure

```
dentiverse-docs/
├── README.md                          # This file
├── docs/
│   └── phase-1/                       # Phase 1: Foundation & Definition
│       ├── DentiVerse_PRD_Light.docx   # Product Requirement Document
│       └── DentiVerse_Personas_TechSpec.docx  # User Personas + Tech Spec + DB Schema
├── diagrams/
│   ├── client-user-flow.mmd           # Client (Dentist/Lab) user flow — Mermaid
│   ├── designer-user-flow.mmd         # Designer user flow — Mermaid
│   └── entity-relationship-diagram.mmd # Database ERD — Mermaid
└── scripts/
    └── (future: setup, migration, seed scripts)
```

---

## Documents Overview

### Phase 1: Foundation & Definition

| Document | Contents | Status |
|----------|----------|--------|
| **PRD Light** | Problem statement, solution, competitive landscape, UVP, target users, success metrics, revenue model, risks | ✅ Complete |
| **User Personas** | 4 detailed personas (2 demand-side, 2 supply-side) with goals, frustrations, scenarios | ✅ Complete |
| **Technical Specification** | Full tech stack recommendation, architecture decisions, security & compliance | ✅ Complete |
| **Database Schema (ERD)** | 9 core entities with full field definitions and relationships | ✅ Complete |
| **User Flow Diagrams** | Client flow + Designer flow as Mermaid flowcharts | ✅ Complete |

### Upcoming Phases

| Phase | Focus | Status |
|-------|-------|--------|
| Phase 2 | Wireframes & UI/UX Design | 🔜 Next |
| Phase 3 | MVP Development | ⏳ Planned |
| Phase 4 | Testing & QA | ⏳ Planned |
| Phase 5 | Launch & Growth | ⏳ Planned |

---

## Tech Stack (Recommended)

| Layer | Technology |
|-------|-----------|
| **Frontend** | Next.js 15, React 19, TypeScript, Tailwind CSS, shadcn/ui |
| **3D Viewer** | Three.js / React Three Fiber |
| **Backend** | Supabase (PostgreSQL, Auth, Storage, Edge Functions) + Next.js API Routes |
| **Database** | PostgreSQL 16 (Supabase managed) |
| **Payments** | Stripe Connect (escrow, split payments, global payouts) |
| **File Upload** | Uppy.js (resumable uploads) → Supabase Storage |
| **Hosting** | Vercel (frontend) + Supabase Cloud (backend) |
| **DNS / CDN** | Cloudflare |
| **Email** | Resend |
| **Monitoring** | Sentry + Vercel Analytics |
| **CI/CD** | GitHub Actions |

---

## Viewing Mermaid Diagrams

The `.mmd` files in `diagrams/` render natively on GitHub. You can also view them at:
- [Mermaid Live Editor](https://mermaid.live) — paste the file contents
- Any IDE with a Mermaid extension (VS Code: "Mermaid Preview")

---

## Key Metrics (Targets)

| Metric | Target |
|--------|--------|
| Client retention (30-day) | > 40% |
| Repeat order rate | > 50% |
| Median delivery time | < 24 hours |
| NPS score | > 50 |
| Platform GMV | $50K/month by Month 12 |

---

## Competitive Landscape

| Competitor | Model | DentiVerse Advantage |
|-----------|-------|---------------------|
| **CadCam Masters** | Freelance marketplace | Better UX, 3D viewer, quality assurance |
| **Evident Digital** | Enterprise B2B | Self-service, accessible to solo clinics |
| **3Shape Design Service** | Ecosystem-locked | Open platform, any scanner/software |
| **Fiverr / Upwork** | Generic freelance | Dental-specific workflow, clinical quality |
| **Traditional Labs** | Local, offline | 60% cheaper, 24hr delivery, transparent |

---

## License

Confidential — All rights reserved.

---

*Built with clarity. Designed for scale.*
