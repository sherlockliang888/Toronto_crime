SELECT 
    COUNT(DISTINCT event_unique_id)
FROM
    crimeevents;
    
select year(occurrencedate) as year, count(distinct event_unique_id) as count
from crimeevents
group by year(occurrencedate);

Select sub.neighbourhood_id, avg(sub.counts) as avg_count
from 
(select ce.Hood_ID as neighbourhood_id, year(occurrencedate) as year, count(distinct event_unique_id) as counts
from crimeevents ce, neighbourhoods n
where ce.Hood_ID = n.AREA_SHORT_CODE
group by ce.Hood_ID, year(occurrencedate)
order by Hood_ID asc) as sub
group by sub.neighbourhood_id
order by avg_count desc;


select sub.Division, avg(sub.counts) as avg_counts
from 
(select cd.Division, year(ce.occurrencedate), count(distinct ce.event_unique_id) as counts
from crimeevents ce, crimedetails cd, divisions d
where ce.event_unique_id = cd.event_unique_id
and cd.Division =  d.DivisionID
group by cd.Division,  year(ce.occurrencedate)
order by cd.Division) as sub
group by sub.Division
order by avg_counts desc;

select cd.Division, d.DivisionAddresss, ce.Hood_ID, n.AREA_NAME
from crimeevents ce, crimedetails cd, divisions d, neighbourhoods n
where ce.event_unique_id = cd.event_unique_id
and cd.Division =  d.DivisionID
and n.AREA_SHORT_CODE =  ce.Hood_ID
group by cd.Division, ce.Hood_ID
order by cd.Division;

select count(distinct ce.event_unique_id) as counts
from crimeevents ce, crimereports cr
where ce.event_unique_id = cr.event_unique_id
and reporteddate != occurrencedate;

