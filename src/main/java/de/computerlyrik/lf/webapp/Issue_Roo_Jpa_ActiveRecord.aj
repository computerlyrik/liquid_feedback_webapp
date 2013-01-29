// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package de.computerlyrik.lf.webapp;

import de.computerlyrik.lf.webapp.Issue;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect Issue_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager Issue.entityManager;
    
    public static final EntityManager Issue.entityManager() {
        EntityManager em = new Issue().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Issue.countIssues() {
        return entityManager().createQuery("SELECT COUNT(o) FROM Issue o", Long.class).getSingleResult();
    }
    
    public static List<Issue> Issue.findAllIssues() {
        return entityManager().createQuery("SELECT o FROM Issue o", Issue.class).getResultList();
    }
    
    public static Issue Issue.findIssue(Integer id) {
        if (id == null) return null;
        return entityManager().find(Issue.class, id);
    }
    
    public static List<Issue> Issue.findIssueEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Issue o", Issue.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void Issue.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Issue.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Issue attached = Issue.findIssue(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Issue.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void Issue.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public Issue Issue.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Issue merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}