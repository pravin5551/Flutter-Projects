import 'package:basket_ball_teams/home_team.dart';
import 'package:basket_ball_teams/visitor_team.dart';

class Data {

  final int id;
  final String date;
  final Home_team home_team;
  final int home_team_score;
  final int period;
  final bool postseason;
  final int season;
  final String status;
  final String time;
  final Visitor_team visitor_team;
  final int visitor_team_score;

	Data.fromJsonMap(Map<String, dynamic> map): 
		id = map["id"],
		date = map["date"],
		home_team = Home_team.fromJsonMap(map["home_team"]),
		home_team_score = map["home_team_score"],
		period = map["period"],
		postseason = map["postseason"],
		season = map["season"],
		status = map["status"],
		time = map["time"],
		visitor_team = Visitor_team.fromJsonMap(map["visitor_team"]),
		visitor_team_score = map["visitor_team_score"];

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['id'] = id;
		data['date'] = date;
		data['home_team'] = home_team == null ? null : home_team.toJson();
		data['home_team_score'] = home_team_score;
		data['period'] = period;
		data['postseason'] = postseason;
		data['season'] = season;
		data['status'] = status;
		data['time'] = time;
		data['visitor_team'] = visitor_team == null ? null : visitor_team.toJson();
		data['visitor_team_score'] = visitor_team_score;
		return data;
	}
}
