# MySQL Code and Outcome
After splitting the data and constructing five new tables, I have successfully created a Toronto Crime Database from 2014 to 2019. Now in this file, I will be exploring 
the database with DBMS MySQL and answering some questions that I have come up with. A small portion of outcome to each question will attached as screenshots from MySQL Workbench. 

#### 1. How many unique events are there in total?
```sql
SELECT 
    COUNT(DISTINCT event_unique_id)
FROM
    crimeevents;
```

#### 2. How many unique events are there each year?
```sql
SELECT 
    YEAR(occurrencedate) AS year,
    COUNT(DISTINCT event_unique_id) AS count
FROM
    crimeevents
GROUP BY YEAR(occurrencedate);
```


#### 3. Which neighbourhood and division have the highest average events per year? 
```sql
SELECT 
    sub.neighbourhood_id, AVG(sub.counts) AS avg_count
FROM
    (SELECT 
        ce.Hood_ID AS neighbourhood_id,
            YEAR(occurrencedate) AS year,
            COUNT(DISTINCT event_unique_id) AS counts
    FROM
        crimeevents ce, neighbourhoods n
    WHERE
        ce.Hood_ID = n.AREA_SHORT_CODE
    GROUP BY ce.Hood_ID , YEAR(occurrencedate)
    ORDER BY Hood_ID ASC) AS sub
GROUP BY sub.neighbourhood_id
ORDER BY avg_count DESC;
```

```sql
SELECT 
    sub.Division, AVG(sub.counts) AS avg_counts
FROM
    (SELECT 
        cd.Division,
            YEAR(ce.occurrencedate),
            COUNT(DISTINCT ce.event_unique_id) AS counts
    FROM
        crimeevents ce, crimedetails cd, divisions d
    WHERE
        ce.event_unique_id = cd.event_unique_id
            AND cd.Division = d.DivisionID
    GROUP BY cd.Division , YEAR(ce.occurrencedate)
    ORDER BY cd.Division) AS sub
GROUP BY sub.Division
ORDER BY avg_counts DESC;
```

#### 4. What's the address for each police division and what neighbourhoods are under their supervision?
```sql
SELECT 
    cd.Division, d.DivisionAddresss, ce.Hood_ID, n.AREA_NAME
FROM
    crimeevents ce,
    crimedetails cd,
    divisions d,
    neighbourhoods n
WHERE
    ce.event_unique_id = cd.event_unique_id
        AND cd.Division = d.DivisionID
        AND n.AREA_SHORT_CODE = ce.Hood_ID
GROUP BY cd.Division , ce.Hood_ID
ORDER BY cd.Division;
```


#### 5. How many events have different occurrence and report dates? 
```sql
SELECT 
    COUNT(DISTINCT ce.event_unique_id) AS counts
FROM
    crimeevents ce,
    crimereports cr
WHERE
    ce.event_unique_id = cr.event_unique_id
        AND reporteddate != occurrencedate;
```

```sql
SELECT 
    COUNT(DISTINCT ce.event_unique_id) AS counts,
    CASE
        WHEN reporteddate > occurrencedate THEN 'Past cases'
        WHEN reporteddate = occurrencedate THEN 'Same day cases'
        WHEN reporteddate < occurrencedate THEN 'Others'
    END AS Cases_type
FROM
    crimeevents ce,
    crimereports cr
WHERE
    ce.event_unique_id = cr.event_unique_id
GROUP BY Cases_type;
```


#### 6. Which division encountered the most cases on average per year on Christmas Day? 
```sql
SELECT 
    sub.Division, AVG(sub.counts) AS avg_counts
FROM
    (SELECT 
        cd.Division,
            YEAR(reporteddate) AS years,
            COUNT(DISTINCT cd.event_unique_id) AS counts
    FROM
        crimedetails cd, divisions d, crimereports cr
    WHERE
        cd.Division = d.DivisionID
            AND cr.event_unique_id = cd.event_unique_id
            AND (MONTH(reporteddate) = 12
            AND DAYOFMONTH(reporteddate) = 25)
    GROUP BY cd.Division , YEAR(reporteddate)) AS sub
GROUP BY Division
ORDER BY avg_counts DESC;
```


