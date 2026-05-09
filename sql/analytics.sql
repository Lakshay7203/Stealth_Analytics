USE stealth_analytics;

-- view all data
SELECT * 
FROM game_events;

-- Success vs Failure data
SELECT 
    Result, 
    COUNT(*) AS Total
FROM game_events
WHERE EventType IN ('Mission Completed', 'Mission Failed')
GROUP BY Result;

-- Total Runs Played data
SELECT COUNT(DISTINCT SessionID) AS TotalRuns
FROM game_events;

-- AVG. Completion time data
SELECT 
    AVG(TimeSinceStart) AS AvgCompletionTime
FROM game_events
WHERE EventType = 'Mission Completed';

-- Fastest and Slowest completion time data
SELECT 
    MIN(TimeSinceStart) AS FastestRun,
    MAX(TimeSinceStart) AS SlowestRun
FROM game_events
WHERE EventType = 'Mission Completed';

-- Failure Countal by AreaName
SELECT 
    AreaName, 
    COUNT(*) AS FailCount
FROM game_events
WHERE EventType = 'Mission Failed'
GROUP BY AreaName
ORDER BY FailCount DESC;

-- Guard Detection Frequency data
SELECT 
    AreaName,
    COUNT(*) AS DetectionCount
FROM game_events
WHERE EventType = 'Guard Detected Player'
GROUP BY AreaName;

-- Objective Completion count data
SELECT 
    Result AS ObjectiveName,
    COUNT(*) AS TimesCompleted
FROM game_events
WHERE EventType = 'ObjectiveCompleted'
GROUP BY Result;

-- AVG. time to complete each objective data
SELECT 
    Result AS ObjectiveName,
    AVG(TimeSinceStart) AS AvgTime
FROM game_events
WHERE EventType = 'ObjectiveCompleted'
GROUP BY Result;

-- Runs that failed after completing objectives data
SELECT SessionID
FROM game_events
GROUP BY SessionID
HAVING 
    SUM(EventType = 'ObjectiveCompleted') >= 2
    AND SUM(EventType = 'Mission Failed') > 0;

-- Runs that are completed without guard detection data
SELECT SessionID
FROM game_events
GROUP BY SessionID
HAVING 
    SUM(EventType = 'Guard Detected Player') = 0
    AND SUM(EventType = 'Mission Completed') > 0;

-- Detection vs. success comparison data
SELECT 
    CASE 
        WHEN SUM(EventType = 'Guard Detected Player') > 0 THEN 'Detected'
        ELSE 'Not Detected'
    END AS DetectionStatus,
    COUNT(*) AS RunCount
FROM game_events
GROUP BY SessionID;
