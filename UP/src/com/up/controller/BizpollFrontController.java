package com.up.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.up.action.Action;

import com.up.action.ActionForward;
import com.up.action.board.BoardAction;
import com.up.action.board.BoardAnswerRegisterAction;
import com.up.action.board.BoardAnswerViewAction;
import com.up.action.board.BoardDetailDeleteAction;
import com.up.action.board.BoardDetailAction;
import com.up.action.board.BoardDetailCommentListAction;
import com.up.action.board.BoardDetailDownload;
import com.up.action.board.BoardFavoriteUpdateAjaxAction;
import com.up.action.board.BoardRegisterAction;
import com.up.action.board.BoardRegisterViewAction;
import com.up.action.board.BoardDetailReplyRegisterAction;
import com.up.action.board.BoardDetailReplyDeleteAction;
import com.up.action.board.BoardOptionAction;
import com.up.action.board.BoardUpdateAction;
import com.up.action.board.BoardUpdateViewAction;
import com.up.action.board.BoardDetailRecommentStoreAction;
import com.up.action.board.BoardDetailReplyUpdateAction;
import com.up.action.index.IndexAction;
import com.up.action.login.LoginAjaxCkAction;
import com.up.action.login.LogoutAjaxAction;
import com.up.action.member.MemAjaxAction;
import com.up.action.member.MemUpdatePwChkAjaxAction;
import com.up.action.member.MemberAction;
import com.up.action.member.MemberInsertAction;
import com.up.action.member.UPConstractAction;
import com.up.action.mypage.MemberUpdateViewAction;
import com.up.action.mypage.MypageAction;
import com.up.action.mypage.MypageMemCheckAjaxAction;

/**
 * Servlet implementation class BizpollFrontController
 */
@WebServlet("/BizpollFrontController")
public class BizpollFrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public BizpollFrontController() {
        super();
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
    // doGet, doPost 모두 service()를 통해서 작동
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//한글깨짐 방지
		request.setCharacterEncoding("UTF-8");

		//인터페이스
		Action action = null;

		// 페이지 이동방법 결정(Foward, sendRedirect)
		ActionForward forward = null;

		String uri = request.getRequestURI();
		String ctx = request.getContextPath();
		String command = uri.substring(ctx.length()); //uri 에서 ctx를 빼면 내가 원하는 소스만 출력 가능

		System.out.println("uri ===> " + uri);
		System.out.println("ctx ===> " + ctx);
		System.out.println("command ===> " + command);

		// ======= 액션 매핑 ======= //
		// 실제로 동작하는곳, 하나의 Servlet에서 URL을 읽어 해당 기능을 구현
		if(command.equals("/index.bizpoll")) {
			action = new IndexAction();						// action은 인터페이스: 다형성을 이용해서 해당 액션기능을 action에 넣는다
			forward = action.excute(request, response);	// 공통 분기작업에 보낼 forward
		} else if (command.equals("/member.bizpoll")) {
			action = new MemberAction();
			forward = action.excute(request, response);
		} else if (command.equals("/up_constract.bizpoll")) {
			action = new UPConstractAction();			
			forward = action.excute(request, response);
		} else if (command.equals("/memberinsert.bizpoll")) {
			action = new MemberInsertAction();			
			forward = action.excute(request, response);
		} else if (command.equals("/memajax.bizpoll")) {
			action = new MemAjaxAction();			
			forward = action.excute(request, response);
		} else if (command.equals("/loginck.bizpoll")) {
			action = new LoginAjaxCkAction();			
			forward = action.excute(request, response);
		} else if (command.equals("/logout.bizpoll")) {
			action = new LogoutAjaxAction();			
			forward = action.excute(request, response);
		} else if (command.equals("/board.bizpoll")) {
			action = new BoardAction();			
			forward = action.excute(request, response);
		} else if (command.equals("/boardregisterview.bizpoll")) {
			action = new BoardRegisterViewAction();			
			forward = action.excute(request, response);
		} else if (command.equals("/boardregister.bizpoll")) {
			action = new BoardRegisterAction();			
			forward = action.excute(request, response);
		} else if (command.equals("/boarddetail.bizpoll")) {
			action = new BoardDetailAction();			
			forward = action.excute(request, response);
		} else if (command.equals("/boardupdateview.bizpoll")) {
			action = new BoardUpdateViewAction();			
			forward = action.excute(request, response);
		} else if (command.equals("/boardupdate.bizpoll")) {
			action = new BoardUpdateAction();			
			forward = action.excute(request, response);
		} else if (command.equals("/boarddelete.bizpoll")) {
			action = new BoardDetailDeleteAction();			
			forward = action.excute(request, response);
		} else if (command.equals("/boardreplyregister.bizpoll")) {
			action = new BoardDetailReplyRegisterAction();			
			forward = action.excute(request, response);
		} else if (command.equals("/boardreplydelete.bizpoll")) {
			action = new BoardDetailReplyDeleteAction();			
			forward = action.excute(request, response);
		} else if (command.equals("/boardoption.bizpoll")) {
			action = new BoardOptionAction();			
			forward = action.excute(request, response);
		} else if (command.equals("/boardreplyupdate.bizpoll")) {
			action = new BoardDetailReplyUpdateAction();			
			forward = action.excute(request, response);
		} else if (command.equals("/boardrecommentstore.bizpoll")) {
			action = new BoardDetailRecommentStoreAction();			
			forward = action.excute(request, response);
		} else if (command.equals("/boardfavoriteupdate.bizpoll")) {
			action = new BoardFavoriteUpdateAjaxAction();			
			forward = action.excute(request, response);
		} else if (command.equals("/boarddownload.bizpoll")) {
			action = new BoardDetailDownload();			
			forward = action.excute(request, response);
		} else if (command.equals("/boardanswerview.bizpoll")) {
			action = new BoardAnswerViewAction();			
			forward = action.excute(request, response);
		} else if (command.equals("/boardanswerstore.bizpoll")) {
			action = new BoardAnswerRegisterAction();			
			forward = action.excute(request, response);
		} else if (command.equals("/commentlist.bizpoll")) {
			action = new BoardDetailCommentListAction();			
			forward = action.excute(request, response);
		} else if (command.equals("/mypage.bizpoll")) {
			action = new MypageAction();			
			forward = action.excute(request, response);
		} else if (command.equals("/mypageMemCheckAjax.bizpoll")) {
			action = new MypageMemCheckAjaxAction();			
			forward = action.excute(request, response);			
		} else if (command.equals("/memberUpdateView.bizpoll")) {
			action = new MemberUpdateViewAction();			
			forward = action.excute(request, response);	
		} else if (command.equals("/memUpdatePwChkAjax.bizpoll")) {
			action = new MemUpdatePwChkAjaxAction();			
			forward = action.excute(request, response);	
		}
		// ======= 공통분기 작업 ======= //
		if(forward != null) {
			if(forward.isRedirect()) {
				response.sendRedirect(forward.getPath());
			} else {
				RequestDispatcher rd = request.getRequestDispatcher(forward.getPath());
				rd.forward(request, response);
			}
		}		
	}
}