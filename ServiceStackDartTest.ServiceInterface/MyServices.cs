using ServiceStack;
using ServiceStackDartTest.ServiceModel;
using System.Collections.Generic;

namespace ServiceStackDartTest.ServiceInterface
{
    public class MyServices : Service
    {

        public object Any(DartExports req) => req;

        private List<LocationDtoShort> getData()
        {
            return new List<LocationDtoShort>()
            {
                 new LocationDtoShort() { Id = 1324, Name = "Location 1", City = "City 1", State = "State 1" },
                new LocationDtoShort() { Id = 1325, Name = "Location 2", City = "City 2", State = "State 2" },
                new LocationDtoShort() { Id = 1326, Name = "Location 3", City = "City 3", State = "State 3" },
                new LocationDtoShort() { Id = 1327, Name = "Location 4", City = "City 4", State = "State 4" },
                new LocationDtoShort() { Id = 1328, Name = "Location 5", City = "City 5", State = "State 5" },
                new LocationDtoShort() { Id = 1329, Name = "Location 6", City = "City 6", State = "State 6" },
                new LocationDtoShort() { Id = 1330, Name = "Location 7", City = "City 7", State = "State 7" },

            };
           
        }
        public object Any(LocationShortListRequest req)
        {
            return getData();  
        }

        public object Any(LocationShortAutoQueryListRequest req)
        {
            return new QueryResponse<LocationDtoShort>()
            {
                Results = getData(),
                Total = getData().Count,
                Offset=0
            };
        }
    }
}