package com.sinensia.controllers.portlet;

import com.sinensia.controllers.constants.UserFormPortletKeys;

import java.io.IOException;

import com.liferay.portal.kernel.portlet.bridges.mvc.MVCPortlet;
import com.liferay.portal.kernel.servlet.SessionErrors;
import com.liferay.portal.kernel.servlet.SessionMessages;
import com.liferay.portal.kernel.util.ParamUtil;

import javax.portlet.ActionRequest;
import javax.portlet.ActionResponse;
import javax.portlet.Portlet;
import javax.portlet.PortletException;
import javax.portlet.ProcessAction;

import org.osgi.service.component.annotations.Component;

/**
 * @author Administrador
 */
@Component(
	immediate = true,
	property = {
		"com.liferay.portlet.display-category=category.Jordi",
		"com.liferay.portlet.header-portlet-css=/css/main.css",
		"com.liferay.portlet.instanceable=true",
		"javax.portlet.display-name=UserForm",
		"javax.portlet.init-param.template-path=/",
		"javax.portlet.init-param.view-template=/view.jsp",
		"javax.portlet.name=" + UserFormPortletKeys.USERFORM,
		"javax.portlet.resource-bundle=content.Language",
		"javax.portlet.security-role-ref=power-user,user"
	},
	service = Portlet.class
)
public class UserFormPortlet extends MVCPortlet {
	
	@ProcessAction(name="addUser")
	public void addUser(ActionRequest actionRequest,
			ActionResponse actionResponse)  throws IOException, PortletException {
			 
			String userName = ParamUtil.getString(actionRequest,"userName");
			String userSurname = ParamUtil.getString(actionRequest,"userSurname");
			String userAddress = ParamUtil.getString(actionRequest,"address");
			String userIdCard = ParamUtil.getString(actionRequest,"userIdCard");
			
			System.out.println("User name is " +  userName + " and surname is " + userSurname +
					            ", address is " + userAddress + " and userIdCard is " + userIdCard);

			if (userIdCard.contentEquals("38115062a")) {
				SessionErrors.add(actionRequest, "error");
			}
			SessionMessages.add(actionRequest, "success");
			//Deprecated
			//actionResponse.setRenderParameter("jspPage","/whatevername.jsp")
			actionRequest.setAttribute("userName", userName); 
			actionResponse.getRenderParameters().setValue("jspPage","/user-entry.jsp");
	}

}