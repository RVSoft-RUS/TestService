package DAO;

import model.Organization;
import org.hibernate.Session;

import javax.persistence.Query;
import java.math.BigInteger;
import java.util.List;

public class OrganizationDao {

    private final Session session;

    public OrganizationDao(Session session) {
        this.session = session;
    }

    public void deleteAll() {
        session.createQuery("DELETE From Organization").executeUpdate();
        session.close();
    }

    public long getCountOrganizationsByRegion(int region) {
        Query query = session.createSQLQuery(
                "select count(*) from organization where region = :region and block_date is null");
        query.setParameter("region", region);
        long count = ((BigInteger) query.getSingleResult()).longValue();
        session.close();
        return count;
    }

    public List<Organization> getAllOrganizationsByRegion(int region) {
        List<Organization> organizations = session.createQuery("FROM Organization  where region = :region and blockDate is null")
                .setParameter("region", region)
                .list();
        session.close();
        return organizations;
    }

}
