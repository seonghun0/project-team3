package teamproject3.team3.vo;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class memberVO {
	
	private String memberId;
	private String gender;
	private String usertype;

}
