// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package de.computerlyrik.lf.webapp;

import de.computerlyrik.lf.webapp.RenderedSuggestion;
import de.computerlyrik.lf.webapp.Suggestion;
import javax.persistence.Column;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.validation.constraints.NotNull;

privileged aspect RenderedSuggestion_Roo_DbManaged {
    
    @ManyToOne
    @JoinColumn(name = "suggestion_id", referencedColumnName = "id", nullable = false, insertable = false, updatable = false)
    private Suggestion RenderedSuggestion.suggestionId;
    
    @Column(name = "content")
    @NotNull
    private String RenderedSuggestion.content;
    
    public Suggestion RenderedSuggestion.getSuggestionId() {
        return suggestionId;
    }
    
    public void RenderedSuggestion.setSuggestionId(Suggestion suggestionId) {
        this.suggestionId = suggestionId;
    }
    
    public String RenderedSuggestion.getContent() {
        return content;
    }
    
    public void RenderedSuggestion.setContent(String content) {
        this.content = content;
    }
    
}
