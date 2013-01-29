// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package de.computerlyrik.lf.webapp;

import de.computerlyrik.lf.webapp.SystemSetting;
import de.computerlyrik.lf.webapp.SystemSettingPK;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect SystemSetting_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager SystemSetting.entityManager;
    
    public static final EntityManager SystemSetting.entityManager() {
        EntityManager em = new SystemSetting().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long SystemSetting.countSystemSettings() {
        return entityManager().createQuery("SELECT COUNT(o) FROM SystemSetting o", Long.class).getSingleResult();
    }
    
    public static List<SystemSetting> SystemSetting.findAllSystemSettings() {
        return entityManager().createQuery("SELECT o FROM SystemSetting o", SystemSetting.class).getResultList();
    }
    
    public static SystemSetting SystemSetting.findSystemSetting(SystemSettingPK id) {
        if (id == null) return null;
        return entityManager().find(SystemSetting.class, id);
    }
    
    public static List<SystemSetting> SystemSetting.findSystemSettingEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM SystemSetting o", SystemSetting.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void SystemSetting.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void SystemSetting.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            SystemSetting attached = SystemSetting.findSystemSetting(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void SystemSetting.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void SystemSetting.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public SystemSetting SystemSetting.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        SystemSetting merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}