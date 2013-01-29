// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package de.computerlyrik.lf.webapp;

import de.computerlyrik.lf.webapp.Initiative;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect Initiative_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager Initiative.entityManager;
    
    public static final EntityManager Initiative.entityManager() {
        EntityManager em = new Initiative().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Initiative.countInitiatives() {
        return entityManager().createQuery("SELECT COUNT(o) FROM Initiative o", Long.class).getSingleResult();
    }
    
    public static List<Initiative> Initiative.findAllInitiatives() {
        return entityManager().createQuery("SELECT o FROM Initiative o", Initiative.class).getResultList();
    }
    
    public static Initiative Initiative.findInitiative(Integer id) {
        if (id == null) return null;
        return entityManager().find(Initiative.class, id);
    }
    
    public static List<Initiative> Initiative.findInitiativeEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Initiative o", Initiative.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void Initiative.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Initiative.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Initiative attached = Initiative.findInitiative(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Initiative.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void Initiative.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public Initiative Initiative.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Initiative merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}