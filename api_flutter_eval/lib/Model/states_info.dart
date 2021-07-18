/// state : "AK"
/// notes : "Alaska combines PCR and antigen tests in the total tests figure reported on the state's dashboard.\n\nAs of February 6, 2021, [Alaska no longer updates](https://twitter.com/alaska_dhss/status/1355349178335944708?s=21) their COVID-19 dashboards on weekends. As a result, we will be unable to update their data on Saturdays and Sundays. \n\nOn February 12, 2021, Alaska [announced](https://twitter.com/Alaska_DHSS/status/1360413364065767424?s=20) via the official Alaska Department of Health and Social Services twitter that there would be no update to their data on February 15, 2021 due to the Presidents Day holiday.\n\nOn January 20, 2021, Alaska [reported](https://www.adn.com/alaska-news/2021/01/20/tracking-covid-19-in-alaska-record-23-deaths-and-167-infections-reported-wednesday/) a comparatively large increase of 23 deaths due to a review of death certificates.\n\nOn January 4, 2020, Alaska noted that \"counted deaths in Alaska include COVID-19 cases confirmed through a lab result as well as probable deaths based on confirmed COVID-19 clinical and epidemiological criteria as defined by the CDC with no confirmatory lab testing.\" Due to this change we are unable to update the **Confirmed deaths** metric after January 4, 2020.\n\nOn January 1, 2021, Alaska noted that there would be no update to their data on January 1, 2021.\n\nOn December 25, 2020, Alaska announced on their dashboard that there would be no update to their data on December 25, 2020. \n\nOn November 17, 2020, Alaska [announced](https://alaska-coronavirus-vaccine-outreach-alaska-dhss.hub.arcgis.com/datasets/cases-frequently-asked-questions) that “As of 11/17/2020, the cases dashboard will not be showing data on recovered and active cases due to the increasing State case load”. Due to this we cannot continue reporting **Recovered**, however the time series for this metric is available in the historical data, and our data downloads. \n\nOn November 16, 2020 we updated the **Cases (confirmed plus probable)** field to include only residents. We also deleted the time series for **Confirmed cases** because Alaska is lumping PCR and antigen testing for their case definition.\n\nOn November 16, 2020 we added **Cumulative Hospitalized** (which includes both residents and non-residents), although the value does not reflect current hospitalizations.\n\nOn November 7, 2020, Alaska announced that their testing dashboard would be \"temporarily disabled from November 6th to November 9th\" and that testing data could be accessed through their data summary tables. After originally using the data summary tables on November 7, we have reversed that decision, and reverted the values to their November 6th state. The frozen values were replaced on November 10, with values from the state's [Tests Dataset](https://coronavirus-response-alaska-dhss.hub.arcgis.com/datasets/tests-dataset). \n\nOn November 6, 2020, Alaska’s **Total PCR tests (specimens)** and **Positive PCR tests (specimens)** decreased without explanation. As a result, `Negative`, which is calculated by subtracting **Total cases** from **Total PCR tests (specimens)**, decreased also.\n\nOn November 5, 2020, Alaska’s **Total PCR tests (specimens)** increased from roughly 628k to 782k. We were unable to find an explanation for the increase.\n\nAs of September 18, 2020, Alaska's total test results are drawn from our `totalTestsViral` field instead of calculated via positive+negative."
/// covid19Site : "http://dhss.alaska.gov/dph/Epi/id/Pages/COVID-19/monitoring.aspx"
/// covid19SiteSecondary : "https://experience.arcgis.com/experience/ed1c874ca60b4c15ab09095a070065ca"
/// covid19SiteTertiary : "https://alaska-dhss.maps.arcgis.com/apps/opsdashboard/index.html#/8782a14ef52342e99f866a3b8a3e624a"
/// covid19SiteQuaternary : "https://services1.arcgis.com/WzFsmainVTuD5KML/arcgis/rest/services/Tests_Dataset/FeatureServer/0/query?where=Test_Result+%3D+%27Negative%27&outStatistics=%5B%7B%27statisticType%27%3A+%27count%27%2C+%27onStatisticField%27%3A+%27FID%27%2C+%27outStatisticFieldName%27%3A+%27tests_negative%27%7D%5D"
/// covid19SiteQuinary : "https://services1.arcgis.com/WzFsmainVTuD5KML/arcgis/rest/services/Tests_Dataset/FeatureServer/0/query?where=Test_Result+%3D+%27Positive%27&outStatistics=%5B%7B%27statisticType%27%3A+%27count%27%2C+%27onStatisticField%27%3A+%27FID%27%2C+%27outStatisticFieldName%27%3A+%27tests_positive%27%7D%5D"
/// twitter : "@Alaska_DHSS"
/// covid19SiteOld : "http://dhss.alaska.gov/dph/Epi/id/Pages/COVID-19/default.aspx"
/// covidTrackingProjectPreferredTotalTestUnits : "Specimens"
/// covidTrackingProjectPreferredTotalTestField : "totalTestsViral"
/// totalTestResultsField : "Total Tests (PCR)"
/// pui : "All data"
/// pum : false
/// name : "Alaska"
/// fips : "02"

class StatesInfo {
  String? _state;
  String? _notes;
  String? _covid19Site;
  String? _covid19SiteSecondary;
  String? _covid19SiteTertiary;
  String? _covid19SiteQuaternary;
  String? _covid19SiteQuinary;
  String? _twitter;
  String? _covid19SiteOld;
  String? _covidTrackingProjectPreferredTotalTestUnits;
  String? _covidTrackingProjectPreferredTotalTestField;
  String? _totalTestResultsField;
  String? _pui;
  bool? _pum;
  String? _name;
  String? _fips;

  String? get state => _state;
  String? get notes => _notes;
  String? get covid19Site => _covid19Site;
  String? get covid19SiteSecondary => _covid19SiteSecondary;
  String? get covid19SiteTertiary => _covid19SiteTertiary;
  String? get covid19SiteQuaternary => _covid19SiteQuaternary;
  String? get covid19SiteQuinary => _covid19SiteQuinary;
  String? get twitter => _twitter;
  String? get covid19SiteOld => _covid19SiteOld;
  String? get covidTrackingProjectPreferredTotalTestUnits => _covidTrackingProjectPreferredTotalTestUnits;
  String? get covidTrackingProjectPreferredTotalTestField => _covidTrackingProjectPreferredTotalTestField;
  String? get totalTestResultsField => _totalTestResultsField;
  String? get pui => _pui;
  bool? get pum => _pum;
  String? get name => _name;
  String? get fips => _fips;

  StatesInfo({
      String? state, 
      String? notes, 
      String? covid19Site, 
      String? covid19SiteSecondary, 
      String? covid19SiteTertiary, 
      String? covid19SiteQuaternary, 
      String? covid19SiteQuinary, 
      String? twitter, 
      String? covid19SiteOld, 
      String? covidTrackingProjectPreferredTotalTestUnits, 
      String? covidTrackingProjectPreferredTotalTestField, 
      String? totalTestResultsField, 
      String? pui, 
      bool? pum, 
      String? name, 
      String? fips}){
    _state = state;
    _notes = notes;
    _covid19Site = covid19Site;
    _covid19SiteSecondary = covid19SiteSecondary;
    _covid19SiteTertiary = covid19SiteTertiary;
    _covid19SiteQuaternary = covid19SiteQuaternary;
    _covid19SiteQuinary = covid19SiteQuinary;
    _twitter = twitter;
    _covid19SiteOld = covid19SiteOld;
    _covidTrackingProjectPreferredTotalTestUnits = covidTrackingProjectPreferredTotalTestUnits;
    _covidTrackingProjectPreferredTotalTestField = covidTrackingProjectPreferredTotalTestField;
    _totalTestResultsField = totalTestResultsField;
    _pui = pui;
    _pum = pum;
    _name = name;
    _fips = fips;
}

  StatesInfo.fromJson(dynamic json) {
    _state = json["state"];
    _notes = json["notes"];
    _covid19Site = json["covid19Site"];
    _covid19SiteSecondary = json["covid19SiteSecondary"];
    _covid19SiteTertiary = json["covid19SiteTertiary"];
    _covid19SiteQuaternary = json["covid19SiteQuaternary"];
    _covid19SiteQuinary = json["covid19SiteQuinary"];
    _twitter = json["twitter"];
    _covid19SiteOld = json["covid19SiteOld"];
    _covidTrackingProjectPreferredTotalTestUnits = json["covidTrackingProjectPreferredTotalTestUnits"];
    _covidTrackingProjectPreferredTotalTestField = json["covidTrackingProjectPreferredTotalTestField"];
    _totalTestResultsField = json["totalTestResultsField"];
    _pui = json["pui"];
    _pum = json["pum"];
    _name = json["name"];
    _fips = json["fips"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["state"] = _state;
    map["notes"] = _notes;
    map["covid19Site"] = _covid19Site;
    map["covid19SiteSecondary"] = _covid19SiteSecondary;
    map["covid19SiteTertiary"] = _covid19SiteTertiary;
    map["covid19SiteQuaternary"] = _covid19SiteQuaternary;
    map["covid19SiteQuinary"] = _covid19SiteQuinary;
    map["twitter"] = _twitter;
    map["covid19SiteOld"] = _covid19SiteOld;
    map["covidTrackingProjectPreferredTotalTestUnits"] = _covidTrackingProjectPreferredTotalTestUnits;
    map["covidTrackingProjectPreferredTotalTestField"] = _covidTrackingProjectPreferredTotalTestField;
    map["totalTestResultsField"] = _totalTestResultsField;
    map["pui"] = _pui;
    map["pum"] = _pum;
    map["name"] = _name;
    map["fips"] = _fips;
    return map;
  }

}