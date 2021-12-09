package teamproject3.team3.vo;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class movieVO {
	
	private String movie_id;
	private String title;
	private String subtitle;
	private String language;
	private String release_date;
	private String overview;
	private String vote_average;
	private String posterpath;
	private String popularity;
	private String vote_count;
}
