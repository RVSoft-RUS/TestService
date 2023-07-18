import org.eclipse.jetty.server.Server;
import org.eclipse.jetty.servlet.ServletContextHandler;
import org.eclipse.jetty.servlet.ServletHolder;
import servlet.*;

public class Main {

    public static void main(String[] args) throws Exception {
        OrganizationCountServlet organizationCountServlet = new OrganizationCountServlet();
        OrganizationServlet organizationServlet = new OrganizationServlet();

        ServletContextHandler context = new ServletContextHandler(ServletContextHandler.SESSIONS);
        context.addServlet(new ServletHolder(organizationCountServlet), "/count");
        context.addServlet(new ServletHolder(organizationServlet), "/organizations");

        Server server = new Server(8080);
        server.setHandler(context);

        server.start();
        server.join();
    }
}
