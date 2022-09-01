SELECT LEN(CountryName) - LEN(REPLACE(CountryName, 'A', '')) AS Counts FROM Countries
WHERE CountryName = 'Albania'

SELECT CountryName, IsoCode FROM Countries
WHERE LEN(CountryName) - LEN(REPLACE(CountryName, 'A', '')) >= 3
ORDER BY IsoCode