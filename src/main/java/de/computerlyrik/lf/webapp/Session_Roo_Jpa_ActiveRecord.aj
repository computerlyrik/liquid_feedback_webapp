// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package de.computerlyrik.lf.webapp;

import de.computerlyrik.lf.webapp.Session;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect Session_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager Session.entityManager;
    
    public static final EntityManager Session.entityManager() {
        EntityManager em = new Session().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Session.countSessions() {
        return entityManager().createQuery("SELECT COUNT(o) FROM Session o", Long.class).getSingleResult();
    }
    
    public static List<Session> Session.findAllSessions() {
        return entityManager().createQuery("SELECT o FROM Session o", Session.class).getResultList();
    }
    
    public static Session Session.findSession(String ident) {
        if (ident == null || ident.length() == 0) return null;
        return entityManager().find(Session.class, ident);
    }
    
    public static List<Session> Session.findSessionEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Session o", Session.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void Session.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Session.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Session attached = Session.findSession(this.ident);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Session.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void Session.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public Session Session.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Session merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}