-- DracoMap performance / correctness migration
-- Run once on an EXISTING database (fresh installs already include these in draco.sql).
-- Usage: mysql -u root draco < migration_2026_performance.sql

USE `draco`;

-- bestiary.id is queried once per creature marker (map/creatures pages).
-- Without an index every lookup scans the whole table.
ALTER TABLE `bestiary` ADD UNIQUE KEY `id` (`id`);

-- Speed up the visible-only map query and the expiration cleanup.
ALTER TABLE `creatures` ADD KEY `visible_date` (`visible`, `date`);

-- Speed up type filtering (hidePilars / hideObelisks) and date-based portal/roost cleanup.
ALTER TABLE `stops` ADD KEY `type` (`type`), ADD KEY `date` (`date`);
