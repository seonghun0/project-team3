package teamproject3.team3.view;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.FileInputStream;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.view.AbstractView;

import teamproject3.team3.vo.BoardAttachVO;

public class DownloadView extends AbstractView {

	@Override
	protected void renderMergedOutputModel(
			Map<String, Object> params,	//Controller에서 전달한 데이터가 유입되는 통로
			HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		BoardAttachVO attachment = (BoardAttachVO)params.get("attachment");
		
		//다운로드 처리
		//1. 브라우저에게 처리할 수 없는 컨텐츠로 알려주어서 다운로드 처리하도록 지정
		response.setContentType("application/octet-stream");

		//2. 다운로드 처리할 때 필요한 정보 제공
		response.addHeader(
			"Content-Disposition", 
			String.format("Attachment;Filename=\"%s\"", 
				new String(attachment.getUserFileName().getBytes("utf-8"), "ISO-8859-1")));

		//3. 파일을 응답스트림에 기록
		ServletContext application = request.getServletContext();
		String file2 = application.getRealPath("/resources/upload-files/" + attachment.getSavedFileName());
		BufferedInputStream istream = new BufferedInputStream(new FileInputStream(file2));
		BufferedOutputStream ostream = new BufferedOutputStream(response.getOutputStream());
		while (true) {
			int data = istream.read();
			if (data != -1) 
				ostream.write(data);
			else
				break;
		}
		istream.close();
		ostream.close();
	}

}