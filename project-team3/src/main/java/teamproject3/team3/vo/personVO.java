package teamproject3.team3.vo;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class personVO {

	private int id;
	private String name;
	private String profile_path;
	private String role;
	private String department;
}
