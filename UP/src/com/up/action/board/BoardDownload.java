package com.up.action.board;

import java.io.FileInputStream;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.up.action.Action;
import com.up.action.ActionForward;
import com.up.common.Constants;
import com.up.dao.BoardDAO;

public class BoardDownload implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {		
		
		// 게시글 파일 다운로드
		// 클라이언트										서버
		//							<========		파일
		//															InputStream(파일읽기)
		//															OutputStream(파일쓰기)
		
		Integer bno = Integer.parseInt(request.getParameter("bno"));
		
		// 다운로드한 파일 DB에서 가져옴
		BoardDAO bDao = BoardDAO.getInstance();
		String filename = bDao.getFileName(bno);
		
		System.out.println("다운로드 할 파일 =====> " + filename);
		
		// 다운로드할 파일 경로 (UPLOAD_PATH상수에 filename을 더해야 경로를 찾을수 있다)
		String path = Constants.UPLOAD_PATH + filename;
		byte b[] = new byte[4096];	// 바이트 배열 생성
		
		// 서버에 저장된 파일을 읽기 위한 스트림 생성
		FileInputStream fis = new FileInputStream(path);
		
		// mimeType(파일의 종류)
		String mimeType = request.getServletContext().getMimeType(path);
		if(mimeType == null) {
			mimeType = "application/octet-stream; charset=utf-8";
		}
		
		// 파일 이름에 한글이 포함된 경우
		// new String(바이트 배열, 변환할 인코딩) 8859_1 서유럽언어
		// header에 특수문자 사용 못함, 서유럽언어로 변환
		filename = new String(filename.getBytes("utf-8"), "8859_1");
		
		// HTTP header (header의 환경설정 변경)
		response.setHeader("content-Disposition", "attachment;filename=" + filename);

		// HTTP body
		// OutputStream 생성(서버에서 클라이언트에 쓰기)
		ServletOutputStream out = response.getOutputStream();
		
		int numRead;
		while(true) {
			numRead = fis.read(b, 0, b.length); 		// 데이터 읽기(4096 byte씩 끊어서 읽는다.)
			if(numRead == -1) {
				break;
			}
			out.write(b, 0, numRead);
		}
		
		// 파일 처리 관련 리소스 정리
		out.flush();			// out.flush(); 처리 필수 (남아있는 데이터까지 받아준다.)
		out.close();			// out.close(); fis.close(); 객체 닫기
		fis.close();
		
		bDao.updateDowncnt(bno);
		
		return null;
	}

}
