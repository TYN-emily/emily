create table if not exists public.study_time_records (
  sync_id text primary key,
  records jsonb not null default '[]'::jsonb,
  updated_at timestamptz not null default now()
);

alter table public.study_time_records enable row level security;

drop policy if exists "study_time_records_select" on public.study_time_records;
drop policy if exists "study_time_records_insert" on public.study_time_records;
drop policy if exists "study_time_records_update" on public.study_time_records;

create policy "study_time_records_select"
on public.study_time_records
for select
to anon
using (true);

create policy "study_time_records_insert"
on public.study_time_records
for insert
to anon
with check (true);

create policy "study_time_records_update"
on public.study_time_records
for update
to anon
using (true)
with check (true);
