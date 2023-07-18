package service;

import DAO.OrganizationDao;
import model.Organization;
import org.hibernate.SessionFactory;
import util.DBHelper;

import java.util.List;

public class OrganizationService {
    private static OrganizationService organizationService;
    private final SessionFactory sessionFactory;

    private OrganizationService(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    public static OrganizationService getInstance() {
        if (organizationService == null) {
            organizationService = new OrganizationService(DBHelper.getSessionFactory());
        }
        return organizationService;
    }

    public long countByRegion(int region) {
        return new OrganizationDao(sessionFactory.openSession()).getCountOrganizationsByRegion(region);
    }

    public List<Organization> getAllOrganizationsByRegion(int region) {
        return new OrganizationDao(sessionFactory.openSession()).getAllOrganizationsByRegion(region);
    }
}
