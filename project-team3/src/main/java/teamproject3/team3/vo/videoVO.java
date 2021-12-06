package teamproject3.team3.vo;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class videoVO {
	
	private String movie_id;
	private String videokey;
	private String videotype;
	private String name;
	private String site;
}
