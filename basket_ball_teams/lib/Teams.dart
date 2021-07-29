import 'package:basket_ball_teams/data.dart';
import 'package:basket_ball_teams/meta.dart';

class Teams {

  final List<Data> data;
  final Meta meta;

	Teams.fromJsonMap(Map<String, dynamic> map): 
		data = List<Data>.from(map["data"].map((it) => Data.fromJsonMap(it))),
		meta = Meta.fromJsonMap(map["meta"]);

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['data'] = data != null ? 
			this.data.map((v) => v.toJson()).toList()
			: null;
		data['meta'] = meta == null ? null : meta.toJson();
		return data;
	}
}
