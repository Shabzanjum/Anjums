/*
Foundation Recap Exercise

Use the table PatientStay.  
This lists 44 patients admitted to London hospitals over 5 days between Feb 26th and March 2nd 2024
*/

SELECT ps.PatientId, ps.AdmittedDate, ps.DischargeDate, ps.Hospital, ps.Ward,
DATEDIFF(day,ps.AdmittedDate,ps.DischargeDate) +1 as Length_Of_Stay
--,MONTH(AdmittedDate) as AdmMonth
--, DATEPART(month,AdmittedDate)as Admmonth

FROM
	PatientStay ps
where ps.Hospital in ('Oxleas', 'PRUH')
	and ps.AdmittedDate between '2024-02-01' and '2024-02-29'
	and ps.ward like '%surgery%'
	order by AdmittedDate desc, PatientId desc
	--and month(AdmittedDate) =2
	--and YEAR(AdmittedDate) = 2024

--Test date functions
--SELECT month('2024-02-13') AS mymonth;
--SELECT datename(mm,'2024-02-13');
--SELECT LEFT(DATENAME(MONTH, '2024-02-13'), 3) + '-' + right(YEAR('2024-02-13'), 2) AS Month_Year;
/*
1. List the patients -
a) in the Oxleas or PRUH hospitals and
b) admitted in February 2024
c) only the Surgery wards

2. Show the PatientId, AdmittedDate, DischargeDate, Hospital and Ward columns only, not all the columns.
3. Order results by AdmittedDate (latest first) then PatientID column (high to low)
4. Add a new column LengthOfStay which calculates the number of days that the patient stayed in hospital, inclusive of both admitted and discharge date.
*/

-- Write the SQL statement here


/*
5. How many patients has each hospital admitted? 
6. How much is the total tarriff for each hospital?
7. List only those hospitals that have admitted over 10 patients
8. Order by the hospital with most admissions first
*/

-- Write the SQL statement here

