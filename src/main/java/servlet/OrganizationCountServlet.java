package servlet;

import service.OrganizationService;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class OrganizationCountServlet extends HttpServlet {
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

        long count = organizationService.countByRegion(region);
        resp.getWriter().write(String.valueOf(count));
    }
}
