// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package de.computerlyrik.lf.webapp;

import de.computerlyrik.lf.webapp.InitiativeSetting;
import de.computerlyrik.lf.webapp.InitiativeSettingPK;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect InitiativeSetting_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager InitiativeSetting.entityManager;
    
    public static final EntityManager InitiativeSetting.entityManager() {
        EntityManager em = new InitiativeSetting().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long InitiativeSetting.countInitiativeSettings() {
        return entityManager().createQuery("SELECT COUNT(o) FROM InitiativeSetting o", Long.class).getSingleResult();
    }
    
    public static List<InitiativeSetting> InitiativeSetting.findAllInitiativeSettings() {
        return entityManager().createQuery("SELECT o FROM InitiativeSetting o", InitiativeSetting.class).getResultList();
    }
    
    public static InitiativeSetting InitiativeSetting.findInitiativeSetting(InitiativeSettingPK id) {
        if (id == null) return null;
        return entityManager().find(InitiativeSetting.class, id);
    }
    
    public static List<InitiativeSetting> InitiativeSetting.findInitiativeSettingEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM InitiativeSetting o", InitiativeSetting.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void InitiativeSetting.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void InitiativeSetting.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            InitiativeSetting attached = InitiativeSetting.findInitiativeSetting(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void InitiativeSetting.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void InitiativeSetting.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public InitiativeSetting InitiativeSetting.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        InitiativeSetting merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
