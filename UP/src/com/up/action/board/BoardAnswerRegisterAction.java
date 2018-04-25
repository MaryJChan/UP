package com.up.action.board;

import java.io.File;
import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.up.action.Action;
import com.up.action.ActionForward;
import com.up.common.Constants;
import com.up.dao.BoardDAO;
import com.up.dto.BoardDTO;

public class BoardAnswerRegisterAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = "board.bizpoll";		
		
		// 파일을 실질적 업로드 처리
		File uploadDir = new File(Constants.UPLOAD_PATH);
		
		// 파일을 저장할 디렉토리가 존재하지 않다면 디렉토리 생성
		if(!uploadDir.exists()) {
			uploadDir.mkdir();
		}
		
		// requset를 확장시킨 MultipartRequest생성
		// MultipartRequest를 사용하기위해선 cos.jar파일 필요
		// new MultipartRequest(request, 파일업로드 디렉토리, 업로드 용량, 인코딩, 파일이름중복정책)
		MultipartRequest multi = new MultipartRequest(request, Constants.UPLOAD_PATH, Constants.MAX_UPLOAD, "UTF-8", new DefaultFileRenamePolicy());
		Integer bno = Integer.parseInt(multi.getParameter("parent_bno"));
		Integer bnoup = Integer.parseInt(multi.getParameter("parent_bnoup"));
		String title = multi.getParameter("bdanswer_title");
		/*String category = multi.getParameter("bdanswer_category");*/
		String content = multi.getParameter("bdanswer_content");
		String writer = multi.getParameter("bdanswer_writer");
		String filename = " "; //공백
		int filesize = 0;
		System.out.println("부모 번호 : " + bno + "제목 : " + title + " 내용 : " + content + "  작성자 : " + writer);
		
		
		BoardDAO bDao = BoardDAO.getInstance();
		BoardDTO bDto = bDao.BoardAnswerView(bno);
		
		int ref = bDto.getRef();								// 기존 게시글의 ref
		int re_step = bDto.getRe_step() + 1;			// 기존 게시글의 re_step + 1
		int re_level = bDto.getRe_level() + 1;			// 기존 게시글의 re_level + 1
		// 파일 업로드 예외처리
		try {
			// 첨부 파일의 집합 (배열로 가져옴)
			Enumeration files = multi.getFileNames();
			
			// hasMoreElements는 next()와 비슷
			while(files.hasMoreElements()) {
				// 첨부파일의 이름
				String file1 = (String)files.nextElement();
				// file1 의 이름만 가져옴
				filename = multi.getFilesystemName(file1);
				// file을 업로드함
				File f1 = multi.getFile(file1);
				
				if(f1 != null) {
					filesize = (int)f1.length();		// 파일 사이즈 저장
				}
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		// filename이 널값이거나 공백일때 처리
		if(filename == null || filename.trim().equals("")) {
			filename ="-";
		}
		
		// 답글 및 bnoup 순서 조정(re_step)
		bDto.setRef(ref);
		bDto.setRe_step(re_step);
		bDto.setCategory(bDto.getCategory());
		bDao.boardUpdateStep(bDto);
		
		bDao = BoardDAO.getInstance();
		bDto = new BoardDTO(bnoup, title, bDto.getCategory(), content, writer, filename, filesize, ref, re_step, re_level);
		bDao.boardAnswerRegister(bDto);
		
		ActionForward forward = new ActionForward();
		forward.setPath(url);
		// 새로고침시에도 게시글이 등록되지 않음 
		forward.setRedirect(true);		

		return forward;
	}

}
