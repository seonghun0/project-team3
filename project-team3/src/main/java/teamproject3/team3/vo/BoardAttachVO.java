package teamproject3.team3.vo;

import lombok.Data;

@Data
public class BoardAttachVO {
	private int attachNo;
	private int boardNo;
	private String savedFileName;
	private String userFileName;
}