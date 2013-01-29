// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package de.computerlyrik.lf.webapp;

import de.computerlyrik.lf.webapp.RenderedDraft;
import de.computerlyrik.lf.webapp.RenderedDraftPK;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect RenderedDraft_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager RenderedDraft.entityManager;
    
    public static final EntityManager RenderedDraft.entityManager() {
        EntityManager em = new RenderedDraft().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long RenderedDraft.countRenderedDrafts() {
        return entityManager().createQuery("SELECT COUNT(o) FROM RenderedDraft o", Long.class).getSingleResult();
    }
    
    public static List<RenderedDraft> RenderedDraft.findAllRenderedDrafts() {
        return entityManager().createQuery("SELECT o FROM RenderedDraft o", RenderedDraft.class).getResultList();
    }
    
    public static RenderedDraft RenderedDraft.findRenderedDraft(RenderedDraftPK id) {
        if (id == null) return null;
        return entityManager().find(RenderedDraft.class, id);
    }
    
    public static List<RenderedDraft> RenderedDraft.findRenderedDraftEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM RenderedDraft o", RenderedDraft.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void RenderedDraft.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void RenderedDraft.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            RenderedDraft attached = RenderedDraft.findRenderedDraft(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void RenderedDraft.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void RenderedDraft.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public RenderedDraft RenderedDraft.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        RenderedDraft merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
