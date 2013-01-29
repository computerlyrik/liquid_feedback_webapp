// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package de.computerlyrik.lf.webapp;

import de.computerlyrik.lf.webapp.Suggestion;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect Suggestion_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager Suggestion.entityManager;
    
    public static final EntityManager Suggestion.entityManager() {
        EntityManager em = new Suggestion().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Suggestion.countSuggestions() {
        return entityManager().createQuery("SELECT COUNT(o) FROM Suggestion o", Long.class).getSingleResult();
    }
    
    public static List<Suggestion> Suggestion.findAllSuggestions() {
        return entityManager().createQuery("SELECT o FROM Suggestion o", Suggestion.class).getResultList();
    }
    
    public static Suggestion Suggestion.findSuggestion(Long id) {
        if (id == null) return null;
        return entityManager().find(Suggestion.class, id);
    }
    
    public static List<Suggestion> Suggestion.findSuggestionEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Suggestion o", Suggestion.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void Suggestion.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Suggestion.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Suggestion attached = Suggestion.findSuggestion(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Suggestion.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void Suggestion.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public Suggestion Suggestion.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Suggestion merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}