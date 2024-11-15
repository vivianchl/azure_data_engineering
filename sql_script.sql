-- count the number of athletes from each country:
SELECT NOC, COUNT(*) AS TotalAthletes
FROM athletes
GROUP BY NOC
ORDER BY TOTALAthletes DESC;

-- calculate the total medals won by each country:
SELECT Team_NOC, SUM(Gold) Total_Gold,SUM(Silver) Total_Silver,SUM(Bronze) Total_Bronze
FROM medals
GROUP BY Team_NOC
ORDER BY Total_Gold DESC;

-- calculate the average number of entries by gender for each discipline:
SELECT Discipline,
AVG(Female) Avg_female,
AVG(Male) Avg_male
FROM entriesgender
GROUP BY Discipline;