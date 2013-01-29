// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package de.computerlyrik.lf.webapp;

import de.computerlyrik.lf.webapp.MemberImage;
import de.computerlyrik.lf.webapp.MemberImagePK;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect MemberImage_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager MemberImage.entityManager;
    
    public static final EntityManager MemberImage.entityManager() {
        EntityManager em = new MemberImage().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long MemberImage.countMemberImages() {
        return entityManager().createQuery("SELECT COUNT(o) FROM MemberImage o", Long.class).getSingleResult();
    }
    
    public static List<MemberImage> MemberImage.findAllMemberImages() {
        return entityManager().createQuery("SELECT o FROM MemberImage o", MemberImage.class).getResultList();
    }
    
    public static MemberImage MemberImage.findMemberImage(MemberImagePK id) {
        if (id == null) return null;
        return entityManager().find(MemberImage.class, id);
    }
    
    public static List<MemberImage> MemberImage.findMemberImageEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM MemberImage o", MemberImage.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void MemberImage.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void MemberImage.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            MemberImage attached = MemberImage.findMemberImage(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void MemberImage.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void MemberImage.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public MemberImage MemberImage.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        MemberImage merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}