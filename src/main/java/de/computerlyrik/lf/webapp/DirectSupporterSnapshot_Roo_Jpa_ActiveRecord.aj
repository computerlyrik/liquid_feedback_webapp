// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package de.computerlyrik.lf.webapp;

import de.computerlyrik.lf.webapp.DirectSupporterSnapshot;
import de.computerlyrik.lf.webapp.DirectSupporterSnapshotPK;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect DirectSupporterSnapshot_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager DirectSupporterSnapshot.entityManager;
    
    public static final EntityManager DirectSupporterSnapshot.entityManager() {
        EntityManager em = new DirectSupporterSnapshot().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long DirectSupporterSnapshot.countDirectSupporterSnapshots() {
        return entityManager().createQuery("SELECT COUNT(o) FROM DirectSupporterSnapshot o", Long.class).getSingleResult();
    }
    
    public static List<DirectSupporterSnapshot> DirectSupporterSnapshot.findAllDirectSupporterSnapshots() {
        return entityManager().createQuery("SELECT o FROM DirectSupporterSnapshot o", DirectSupporterSnapshot.class).getResultList();
    }
    
    public static DirectSupporterSnapshot DirectSupporterSnapshot.findDirectSupporterSnapshot(DirectSupporterSnapshotPK id) {
        if (id == null) return null;
        return entityManager().find(DirectSupporterSnapshot.class, id);
    }
    
    public static List<DirectSupporterSnapshot> DirectSupporterSnapshot.findDirectSupporterSnapshotEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM DirectSupporterSnapshot o", DirectSupporterSnapshot.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void DirectSupporterSnapshot.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void DirectSupporterSnapshot.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            DirectSupporterSnapshot attached = DirectSupporterSnapshot.findDirectSupporterSnapshot(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void DirectSupporterSnapshot.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void DirectSupporterSnapshot.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public DirectSupporterSnapshot DirectSupporterSnapshot.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        DirectSupporterSnapshot merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
