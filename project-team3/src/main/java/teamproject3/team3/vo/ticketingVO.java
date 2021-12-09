package teamproject3.team3.vo;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class ticketingVO {
	
	private int movie_id;
	private int reserve_rate;
	private String title;
	private String posterpath;
	
}
