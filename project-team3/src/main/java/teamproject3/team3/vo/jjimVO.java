package teamproject3.team3.vo;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class jjimVO {
	
	private int movie_id;
	private String member_id;
	private String title;
}
