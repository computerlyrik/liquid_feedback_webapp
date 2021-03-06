// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package de.computerlyrik.lf.webapp;

import de.computerlyrik.lf.webapp.Supporter;
import de.computerlyrik.lf.webapp.SupporterPK;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect Supporter_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager Supporter.entityManager;
    
    public static final EntityManager Supporter.entityManager() {
        EntityManager em = new Supporter().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Supporter.countSupporters() {
        return entityManager().createQuery("SELECT COUNT(o) FROM Supporter o", Long.class).getSingleResult();
    }
    
    public static List<Supporter> Supporter.findAllSupporters() {
        return entityManager().createQuery("SELECT o FROM Supporter o", Supporter.class).getResultList();
    }
    
    public static Supporter Supporter.findSupporter(SupporterPK id) {
        if (id == null) return null;
        return entityManager().find(Supporter.class, id);
    }
    
    public static List<Supporter> Supporter.findSupporterEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Supporter o", Supporter.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void Supporter.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Supporter.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Supporter attached = Supporter.findSupporter(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Supporter.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void Supporter.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public Supporter Supporter.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Supporter merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
