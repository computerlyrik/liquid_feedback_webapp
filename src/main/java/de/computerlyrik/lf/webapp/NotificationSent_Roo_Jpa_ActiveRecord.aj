// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package de.computerlyrik.lf.webapp;

import de.computerlyrik.lf.webapp.NotificationSent;
import de.computerlyrik.lf.webapp.NotificationSentPK;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect NotificationSent_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager NotificationSent.entityManager;
    
    public static final EntityManager NotificationSent.entityManager() {
        EntityManager em = new NotificationSent().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long NotificationSent.countNotificationSents() {
        return entityManager().createQuery("SELECT COUNT(o) FROM NotificationSent o", Long.class).getSingleResult();
    }
    
    public static List<NotificationSent> NotificationSent.findAllNotificationSents() {
        return entityManager().createQuery("SELECT o FROM NotificationSent o", NotificationSent.class).getResultList();
    }
    
    public static NotificationSent NotificationSent.findNotificationSent(NotificationSentPK id) {
        if (id == null) return null;
        return entityManager().find(NotificationSent.class, id);
    }
    
    public static List<NotificationSent> NotificationSent.findNotificationSentEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM NotificationSent o", NotificationSent.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void NotificationSent.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void NotificationSent.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            NotificationSent attached = NotificationSent.findNotificationSent(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void NotificationSent.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void NotificationSent.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public NotificationSent NotificationSent.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        NotificationSent merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}