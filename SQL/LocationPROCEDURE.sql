
create PROCEDURE spGetContinents
as
begin
	select Id , name  from continents;
end

create PROCEDURE spGetCountriesByContinentsId
@ContinentsId int
as
begin
	select country_id , name from Countries
	where continent_code = @ContinentsId;
end

create PROCEDURE spGetCitiesByCountriesId
@CountriesId int
as
begin
	select ID , Name from Cities
	where CountryID = @CountriesId;
end

