// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package de.computerlyrik.lf.webapp;

import de.computerlyrik.lf.webapp.DelegatingPopulationSnapshot;
import de.computerlyrik.lf.webapp.DelegatingPopulationSnapshotPK;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect DelegatingPopulationSnapshot_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager DelegatingPopulationSnapshot.entityManager;
    
    public static final EntityManager DelegatingPopulationSnapshot.entityManager() {
        EntityManager em = new DelegatingPopulationSnapshot().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long DelegatingPopulationSnapshot.countDelegatingPopulationSnapshots() {
        return entityManager().createQuery("SELECT COUNT(o) FROM DelegatingPopulationSnapshot o", Long.class).getSingleResult();
    }
    
    public static List<DelegatingPopulationSnapshot> DelegatingPopulationSnapshot.findAllDelegatingPopulationSnapshots() {
        return entityManager().createQuery("SELECT o FROM DelegatingPopulationSnapshot o", DelegatingPopulationSnapshot.class).getResultList();
    }
    
    public static DelegatingPopulationSnapshot DelegatingPopulationSnapshot.findDelegatingPopulationSnapshot(DelegatingPopulationSnapshotPK id) {
        if (id == null) return null;
        return entityManager().find(DelegatingPopulationSnapshot.class, id);
    }
    
    public static List<DelegatingPopulationSnapshot> DelegatingPopulationSnapshot.findDelegatingPopulationSnapshotEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM DelegatingPopulationSnapshot o", DelegatingPopulationSnapshot.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void DelegatingPopulationSnapshot.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void DelegatingPopulationSnapshot.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            DelegatingPopulationSnapshot attached = DelegatingPopulationSnapshot.findDelegatingPopulationSnapshot(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void DelegatingPopulationSnapshot.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void DelegatingPopulationSnapshot.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public DelegatingPopulationSnapshot DelegatingPopulationSnapshot.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        DelegatingPopulationSnapshot merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
