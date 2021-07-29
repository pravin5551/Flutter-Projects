
class Visitor_team {

  final int id;
  final String abbreviation;
  final String city;
  final String conference;
  final String division;
  final String full_name;
  final String name;

	Visitor_team.fromJsonMap(Map<String, dynamic> map): 
		id = map["id"],
		abbreviation = map["abbreviation"],
		city = map["city"],
		conference = map["conference"],
		division = map["division"],
		full_name = map["full_name"],
		name = map["name"];

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['id'] = id;
		data['abbreviation'] = abbreviation;
		data['city'] = city;
		data['conference'] = conference;
		data['division'] = division;
		data['full_name'] = full_name;
		data['name'] = name;
		return data;
	}
}
