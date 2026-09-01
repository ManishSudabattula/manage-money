create table if not exists public.money_data (
  user_id uuid primary key references auth.users(id) on delete cascade,
  payload jsonb not null default '{}'::jsonb,
  updated_at timestamptz not null default now()
);

alter table public.money_data enable row level security;

create policy "Users can read their own money data"
on public.money_data for select
using (auth.uid() = user_id);

create policy "Users can create their own money data"
on public.money_data for insert
with check (auth.uid() = user_id);

create policy "Users can update their own money data"
on public.money_data for update
using (auth.uid() = user_id)
with check (auth.uid() = user_id);

