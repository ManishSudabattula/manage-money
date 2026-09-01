# Hearth — household money manager

Hearth is a GitHub Pages-compatible household finance app for tracking multiple accounts, flexible income types, expenses by person, saving opportunities, and investment goals.

## Run locally

```bash
pnpm install
pnpm dev
```

The app works immediately in local mode and stores data in the browser.

## Enable secure multi-device sync

1. Create a free Supabase project.
2. Open the SQL editor and run `supabase/schema.sql`.
3. Copy `.env.example` to `.env.local` and add the project URL and anon key.
4. In Supabase Authentication, add the local URL and your GitHub Pages URL as redirect URLs.
5. Add `NEXT_PUBLIC_SUPABASE_URL` and `NEXT_PUBLIC_SUPABASE_ANON_KEY` as GitHub repository Actions secrets.

Cloud data is protected by Supabase Row Level Security. A user signs in with the same email on each device to access their household.

## Publish on GitHub Pages

In the repository settings, choose **GitHub Actions** as the Pages source. Every push to `main` builds and publishes the static site automatically.
