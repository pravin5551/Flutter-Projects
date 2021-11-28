
class Meta {

  final int total_pages;
  final int current_page;
  final int next_page;
  final int per_page;
  final int total_count;

	Meta.fromJsonMap(Map<String, dynamic> map): 
		total_pages = map["total_pages"],
		current_page = map["current_page"],
		next_page = map["next_page"],
		per_page = map["per_page"],
		total_count = map["total_count"];

	
	//To Json conversion
	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['total_pages'] = total_pages;
		data['current_page'] = current_page;
		data['next_page'] = next_page;
		data['per_page'] = per_page;
		data['total_count'] = total_count;
		return data;
	}
}
