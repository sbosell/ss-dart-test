using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using ServiceStack;

namespace ServiceStackDartTest.ServiceModel
{


    public class LocationDtoShort
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string City { get; set; }
        public string State { get; set; }
    }

    public class LocationDtoLong : LocationDtoShort
    {
        public string Address1 { get; set; }
        public string Address2 { get; set; }

        public string Zip { get; set; }

        public string Latitude { get; set; }

        public string Longitude { get; set; }
        public string Phone { get; set; }

        public string PhoneCatering { get; set; }

        public string ExternalId { get; set; }
    }
    public class LocationDto : LocationDtoLong
    {



        public List<Menu> Menus { get; set; }
        public LocationDto()
        {
            Menus = new List<Menu>();
        }
    }

    [Route("/locations/short")]
    public class LocationShortListRequest : IReturn<List<LocationDtoShort>>
    {

    }

    [Route("/locations/short/autoquery")]
    public class LocationShortAutoQueryListRequest : IReturn<QueryResponse<LocationDtoShort>>
    {

    }

    [Route("/dart-exports")]
    public class DartExports
    {
        public LocationsAllResponse locationsAllResponse { get; set; }
        public List<LocationDtoShort> locationDtoShorts { get;set;}
        public List<LocationDtoLong> locationDtoLongs{ get; set; }
        public List<LocationDto> locationDtos{ get; set; }
        public LocationDto locationDto { get;set;}
        public LocationDtoShort locationDtoShort { get;set;}
        public LocationDtoLong locationDtoLong { get;set;}

    }

    public class LocationsAllResponse
    {
        public int code { get; set; }
        public Data data { get; set; }
    }

    public class Data
    {
        public Menu[] menus { get; set; }
        public Photo[] photos { get; set; }
        public Location location { get; set; }
    }

    public class Location
    {
        public bool out_of_business { get; set; }
        public DateTime updated { get; set; }
        public DateTime created { get; set; }
        public string email { get; set; }
        public string website { get; set; }
        public string name { get; set; }
        public bool has_hours { get; set; }
        public string published_at { get; set; }
        public bool has_menus { get; set; }
        public bool sp_photos { get; set; }
        public string description { get; set; }
        public Hours hours { get; set; }
        public string phone { get; set; }
        public string business_type { get; set; }
        public Foreign_Ids foreign_ids { get; set; }
        public string time_zone { get; set; }
        public Attributes attributes { get; set; }
        public bool is_published { get; set; }
        public bool is_owner_verified { get; set; }
        public int location_nid { get; set; }
        public string location_id { get; set; }
        public LocationMeta location { get; set; }
        public string _id { get; set; }
    }

    public class Hours
    {
        public Monday[] Monday { get; set; }
        public Tuesday[] Tuesday { get; set; }
        public Wednesday[] Wednesday { get; set; }
        public Thursday[] Thursday { get; set; }
        public Friday[] Friday { get; set; }
        public Saturday[] Saturday { get; set; }
        public Sunday[] Sunday { get; set; }
    }

    public class Monday
    {
        public string opening { get; set; }
        public string closing { get; set; }
        public string description { get; set; }
    }

    public class Tuesday
    {
        public string opening { get; set; }
        public string closing { get; set; }
        public string description { get; set; }
    }

    public class Wednesday
    {
        public string opening { get; set; }
        public string closing { get; set; }
        public string description { get; set; }
    }

    public class Thursday
    {
        public string opening { get; set; }
        public string closing { get; set; }
        public string description { get; set; }
    }

    public class Friday
    {
        public string opening { get; set; }
        public string closing { get; set; }
        public string description { get; set; }
    }

    public class Saturday
    {
        public string opening { get; set; }
        public string closing { get; set; }
        public string description { get; set; }
    }

    public class Sunday
    {
        public string opening { get; set; }
        public string closing { get; set; }
        public string description { get; set; }
    }

    public class Foreign_Ids
    {
    }

    public class Attributes
    {
        public string alcohol { get; set; }
        public string price_rating { get; set; }
        public bool spicy { get; set; }
        public bool egg { get; set; }
        public bool wheat { get; set; }
        public bool dairy { get; set; }
        public bool shellfish { get; set; }
        public bool soy { get; set; }
    }

    public class LocationMeta
    {
        public string address1 { get; set; }
        public string address2 { get; set; }
        public string city { get; set; }
        public string state { get; set; }
        public string country { get; set; }
        public string postal_code { get; set; }
        public float longitude { get; set; }
        public float latitude { get; set; }
        public string neighborhood { get; set; }
        public string cross_street { get; set; }
        public string directions { get; set; }
    }

    public class Menu
    {
        public int id { get; set; }
        public string menu_type { get; set; }
        public string location_id { get; set; }
        public string name { get; set; }
        public string description { get; set; }
        public string footnote { get; set; }
        public int order_num { get; set; }
        public string currency { get; set; }
        public DateTime created { get; set; }
        public DateTime updated { get; set; }
        public Section[] sections { get; set; }
        public string attribution_image { get; set; }
        public string attribution_image_link { get; set; }
        public string secure_attribution_image { get; set; }
        public string secure_attribution_image_link { get; set; }
    }

    public class Section
    {
        public int id { get; set; }
        public string name { get; set; }
        public string description { get; set; }
        public int order_num { get; set; }
        public Item[] items { get; set; }
    }

    public class Item
    {
        public int id { get; set; }
        public string name { get; set; }
        public string description { get; set; }
        public int order_num { get; set; }
        public Choice[] choices { get; set; }
        public Attributes attributes { get; set; }
        public Photo[] photos { get; set; }
        public Addition[] additions { get; set; }
    }



    public class Choice
    {
        public string name { get; set; }
        public string unit { get; set; }
        public Calories calories { get; set; }
        public Prices prices { get; set; }
        public int order_num { get; set; }
    }

    public class Calories
    {
        public string max { get; set; }
        public string min { get; set; }
    }

    public class Prices
    {
        public string max { get; set; }
        public float min { get; set; }
    }



    public class Addition
    {
        public string name { get; set; }
        public string unit { get; set; }
        public Prices1 prices { get; set; }
        public int order_num { get; set; }
    }

    public class Prices1
    {
        public string max { get; set; }
        public int min { get; set; }
    }

    public class Photo
    {
        public string photo_id { get; set; }
        public string location_id { get; set; }
        public string title { get; set; }
        public string type { get; set; }
        public int original_width { get; set; }
        public int original_height { get; set; }
        public int size { get; set; }
        public string source { get; set; }
        public string url { get; set; }
        public bool main_image { get; set; }
        public DateTime updated { get; set; }
        public int?[] items { get; set; }
    }

}