package controller.my;

import java.io.File;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import controller.Controller;
import controller.user.UserSessionUtils;
import model.service.ProjectManager;
import model.service.dto.ProjectDTO;

public class UserSupportProjectListViewController implements Controller {

	@Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ServletContext context = request.getServletContext();
		String path = context.getRealPath("/resources/img");
		File dir = new File(path);
		
		HttpSession session = request.getSession();
		String ecoerId = UserSessionUtils.getLoginEcoerId(session);
		
		ProjectManager manager = ProjectManager.getInstance();

		List<ProjectDTO> supportProjectInfoList = manager.supportProjectInfoList(ecoerId);
		request.setAttribute("supportList", supportProjectInfoList);
		
		request.setAttribute("dir", dir);
		return "/user/mySupportProjectView.jsp";

	}
}

