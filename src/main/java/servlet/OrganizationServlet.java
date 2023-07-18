package servlet;

import com.google.gson.Gson;
import model.Organization;
import service.OrganizationService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class OrganizationServlet extends HttpServlet {
    private final OrganizationService organizationService = OrganizationService.getInstance();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        int region;
        try {
            region = Integer.parseInt(req.getParameter("region"));
        } catch (Exception e) {
            resp.setStatus(406);
            resp.getWriter().write("Invalid region code!");
            return;
        }

        List<Organization> organizations = organizationService.getAllOrganizationsByRegion(region);
        Gson gson = new Gson();
        String json = gson.toJson(organizations);
        resp.getWriter().write(String.valueOf(json));
    }
}
