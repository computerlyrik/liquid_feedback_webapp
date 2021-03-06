// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package de.computerlyrik.lf.webapp;

import de.computerlyrik.lf.webapp.DirectSupporterSnapshot;
import de.computerlyrik.lf.webapp.Draft;
import de.computerlyrik.lf.webapp.Event;
import de.computerlyrik.lf.webapp.Initiative;
import de.computerlyrik.lf.webapp.Member;
import de.computerlyrik.lf.webapp.RenderedDraft;
import de.computerlyrik.lf.webapp.Suggestion;
import de.computerlyrik.lf.webapp.Supporter;
import java.util.Calendar;
import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import org.springframework.format.annotation.DateTimeFormat;

privileged aspect Draft_Roo_DbManaged {
    
    @OneToMany(mappedBy = "draft", cascade = { CascadeType.PERSIST, CascadeType.MERGE })
    private Set<DirectSupporterSnapshot> Draft.directSupporterSnapshots;
    
    @OneToMany(mappedBy = "draft", cascade = CascadeType.ALL)
    private Set<Event> Draft.events;
    
    @OneToMany(mappedBy = "draftId", cascade = CascadeType.ALL)
    private Set<RenderedDraft> Draft.renderedDrafts;
    
    @OneToMany(mappedBy = "draft", cascade = { CascadeType.PERSIST, CascadeType.MERGE })
    private Set<Suggestion> Draft.suggestions;
    
    @OneToMany(mappedBy = "draft", cascade = { CascadeType.PERSIST, CascadeType.MERGE })
    private Set<Supporter> Draft.supporters;
    
    @ManyToOne
    @JoinColumn(name = "initiative_id", referencedColumnName = "id", nullable = false)
    private Initiative Draft.initiativeId;
    
    @ManyToOne
    @JoinColumn(name = "author_id", referencedColumnName = "id", nullable = false)
    private Member Draft.authorId;
    
    @Column(name = "created", updatable = false)
    @NotNull
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "MM")
    private Calendar Draft.created = java.util.Calendar.getInstance();
    
    @Column(name = "formatting_engine")
    private String Draft.formattingEngine;
    
    @Column(name = "content")
    @NotNull
    private String Draft.content;
    
    @Column(name = "text_search_data")
    private String Draft.textSearchData;
    
    public Set<DirectSupporterSnapshot> Draft.getDirectSupporterSnapshots() {
        return directSupporterSnapshots;
    }
    
    public void Draft.setDirectSupporterSnapshots(Set<DirectSupporterSnapshot> directSupporterSnapshots) {
        this.directSupporterSnapshots = directSupporterSnapshots;
    }
    
    public Set<Event> Draft.getEvents() {
        return events;
    }
    
    public void Draft.setEvents(Set<Event> events) {
        this.events = events;
    }
    
    public Set<RenderedDraft> Draft.getRenderedDrafts() {
        return renderedDrafts;
    }
    
    public void Draft.setRenderedDrafts(Set<RenderedDraft> renderedDrafts) {
        this.renderedDrafts = renderedDrafts;
    }
    
    public Set<Suggestion> Draft.getSuggestions() {
        return suggestions;
    }
    
    public void Draft.setSuggestions(Set<Suggestion> suggestions) {
        this.suggestions = suggestions;
    }
    
    public Set<Supporter> Draft.getSupporters() {
        return supporters;
    }
    
    public void Draft.setSupporters(Set<Supporter> supporters) {
        this.supporters = supporters;
    }
    
    public Initiative Draft.getInitiativeId() {
        return initiativeId;
    }
    
    public void Draft.setInitiativeId(Initiative initiativeId) {
        this.initiativeId = initiativeId;
    }
    
    public Member Draft.getAuthorId() {
        return authorId;
    }
    
    public void Draft.setAuthorId(Member authorId) {
        this.authorId = authorId;
    }
    
    public Calendar Draft.getCreated() {
        return created;
    }
    
    public void Draft.setCreated(Calendar created) {
        this.created = created;
    }
    
    public String Draft.getFormattingEngine() {
        return formattingEngine;
    }
    
    public void Draft.setFormattingEngine(String formattingEngine) {
        this.formattingEngine = formattingEngine;
    }
    
    public String Draft.getContent() {
        return content;
    }
    
    public void Draft.setContent(String content) {
        this.content = content;
    }
    
    public String Draft.getTextSearchData() {
        return textSearchData;
    }
    
    public void Draft.setTextSearchData(String textSearchData) {
        this.textSearchData = textSearchData;
    }
    
}
