-- Get final standings
SELECT p.index, p.name, f.position, f.num_laps, f.grid_position, f.num_pitstops, f.best_laptime, f.total_racetime, f.penalties_time, f.num_penalties, f.num_tyrestints 
FROM f1_telemetry.final_classification AS f 
JOIN f1_telemetry.participants AS p 
ON (f.session_uid = p.session_uid AND f.index = p.index)
WHERE f.session_uid=2660295493868089539
ORDER BY p.index ASC;

-- Get Race Director Penalties
SELECT ep.index, ep.session_uid, p.name, i.name, pa1.name AS "Penalised Driver", pa2.name AS "Affected Driver", ep.time, ep.lap_num, ep.places_gained, ep.frame 
FROM f1_telemetry.event_penalty AS ep
JOIN f1_telemetry.penalty AS p ON (ep.penalty_type = p.id)
JOIN f1_telemetry.infringement AS i ON (ep.infringement_type = i.id)
JOIN f1_telemetry.participants AS pa1 ON (ep.session_uid = pa1.session_uid AND ep.index = pa1.index)
JOIN f1_telemetry.participants AS pa2 ON (ep.session_uid = pa2.session_uid AND ep.other_index = pa2.index)
WHERE ep.session_uid=2660295493868089539
ORDER BY ep.frame ASC;

-- Get Fastest Sector/Lap Lap Numbers
SELECT p.index, p.name, s.best_lap_num, s.best_sector1_lap_num, s.best_sector2_lap_num, s.best_sector3_lap_num 
FROM f1_telemetry.session_history AS s
JOIN f1_telemetry.participants AS p
ON (s.session_uid = p.session_uid AND s.index = p.index)
WHERE s.session_uid=2660295493868089539
ORDER BY p.index ASC;

-- Get Tyre Stints
SELECT p.index, p.name, t.stint, a.name AS "Actual Tyre", v.name AS "Visual Tyre", t.tyre_endlap
FROM f1_telemetry.final_classification_tyrestint AS t
JOIN f1_telemetry.participants AS p ON (t.session_uid = p.session_uid AND t.index = p.index)
JOIN f1_telemetry.actual_tyre AS a ON (t.tyre_actual = a.id)
JOIN f1_telemetry.visual_tyre AS v ON (t.tyre_visual = v.id)
WHERE t.session_uid=2660295493868089539
ORDER BY t.index ASC, t.stint ASC;

-- Get Race Director Lap Times
SELECT l.index, p.name, l.lap_num, l.lap_time, l.sector1_time, l.sector2_time, l.sector3_time, l.lap_valid 
FROM f1_telemetry.lap_history AS l
JOIN f1_telemetry.participants AS p
ON (l.session_uid = p.session_uid AND l.index = p.index)
WHERE l.session_uid = 2660295493868089539
ORDER BY l.index ASC, l.lap_num ASC;