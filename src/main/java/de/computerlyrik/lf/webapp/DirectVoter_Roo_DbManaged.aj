// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package de.computerlyrik.lf.webapp;

import de.computerlyrik.lf.webapp.DirectVoter;
import de.computerlyrik.lf.webapp.Issue;
import de.computerlyrik.lf.webapp.Member;
import de.computerlyrik.lf.webapp.RenderedVoterComment;
import de.computerlyrik.lf.webapp.Vote;
import java.util.Calendar;
import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import org.springframework.format.annotation.DateTimeFormat;

privileged aspect DirectVoter_Roo_DbManaged {
    
    @OneToMany(mappedBy = "directVoter", cascade = CascadeType.ALL)
    private Set<RenderedVoterComment> DirectVoter.renderedVoterComments;
    
    @OneToMany(mappedBy = "directVoter", cascade = CascadeType.ALL)
    private Set<Vote> DirectVoter.votes;
    
    @ManyToOne
    @JoinColumn(name = "issue_id", referencedColumnName = "id", nullable = false, insertable = false, updatable = false)
    private Issue DirectVoter.issueId;
    
    @ManyToOne
    @JoinColumn(name = "member_id", referencedColumnName = "id", nullable = false, insertable = false, updatable = false)
    private Member DirectVoter.memberId;
    
    @Column(name = "weight")
    private Integer DirectVoter.weight;
    
    @Column(name = "comment_changed")
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "MM")
    private Calendar DirectVoter.commentChanged;
    
    @Column(name = "formatting_engine")
    private String DirectVoter.formattingEngine;
    
    @Column(name = "comment")
    private String DirectVoter.comment;
    
    @Column(name = "text_search_data")
    private String DirectVoter.textSearchData;
    
    public Set<RenderedVoterComment> DirectVoter.getRenderedVoterComments() {
        return renderedVoterComments;
    }
    
    public void DirectVoter.setRenderedVoterComments(Set<RenderedVoterComment> renderedVoterComments) {
        this.renderedVoterComments = renderedVoterComments;
    }
    
    public Set<Vote> DirectVoter.getVotes() {
        return votes;
    }
    
    public void DirectVoter.setVotes(Set<Vote> votes) {
        this.votes = votes;
    }
    
    public Issue DirectVoter.getIssueId() {
        return issueId;
    }
    
    public void DirectVoter.setIssueId(Issue issueId) {
        this.issueId = issueId;
    }
    
    public Member DirectVoter.getMemberId() {
        return memberId;
    }
    
    public void DirectVoter.setMemberId(Member memberId) {
        this.memberId = memberId;
    }
    
    public Integer DirectVoter.getWeight() {
        return weight;
    }
    
    public void DirectVoter.setWeight(Integer weight) {
        this.weight = weight;
    }
    
    public Calendar DirectVoter.getCommentChanged() {
        return commentChanged;
    }
    
    public void DirectVoter.setCommentChanged(Calendar commentChanged) {
        this.commentChanged = commentChanged;
    }
    
    public String DirectVoter.getFormattingEngine() {
        return formattingEngine;
    }
    
    public void DirectVoter.setFormattingEngine(String formattingEngine) {
        this.formattingEngine = formattingEngine;
    }
    
    public String DirectVoter.getComment() {
        return comment;
    }
    
    public void DirectVoter.setComment(String comment) {
        this.comment = comment;
    }
    
    public String DirectVoter.getTextSearchData() {
        return textSearchData;
    }
    
    public void DirectVoter.setTextSearchData(String textSearchData) {
        this.textSearchData = textSearchData;
    }
    
}
