-- Academic Super AI Phase 5: optional cloud library schema
-- Run in Supabase SQL Editor only after creating your own Supabase project.
-- This creates per-user private rows. It does NOT make a public/shared library.
create table if not exists public.academic_book_chunks (
  id uuid primary key default gen_random_uuid(),
  user_id uuid not null references auth.users(id) on delete cascade,
  source_name text not null,
  page_label text not null default 'متن',
  chunk_text text not null,
  created_at timestamptz not null default now()
);
create index if not exists academic_book_chunks_user_id_idx
  on public.academic_book_chunks(user_id);
alter table public.academic_book_chunks enable row level security;
drop policy if exists "Users can read own academic book chunks" on public.academic_book_chunks;
create policy "Users can read own academic book chunks"
  on public.academic_book_chunks for select to authenticated
  using (auth.uid() = user_id);
drop policy if exists "Users can insert own academic book chunks" on public.academic_book_chunks;
create policy "Users can insert own academic book chunks"
  on public.academic_book_chunks for insert to authenticated
  with check (auth.uid() = user_id);
drop policy if exists "Users can delete own academic book chunks" on public.academic_book_chunks;
create policy "Users can delete own academic book chunks"
  on public.academic_book_chunks for delete to authenticated
  using (auth.uid() = user_id);
