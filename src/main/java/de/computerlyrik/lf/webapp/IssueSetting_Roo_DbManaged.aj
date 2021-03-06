// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package de.computerlyrik.lf.webapp;

import de.computerlyrik.lf.webapp.Issue;
import de.computerlyrik.lf.webapp.IssueSetting;
import de.computerlyrik.lf.webapp.Member;
import javax.persistence.Column;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.validation.constraints.NotNull;

privileged aspect IssueSetting_Roo_DbManaged {
    
    @ManyToOne
    @JoinColumn(name = "issue_id", referencedColumnName = "id", nullable = false, insertable = false, updatable = false)
    private Issue IssueSetting.issueId;
    
    @ManyToOne
    @JoinColumn(name = "member_id", referencedColumnName = "id", nullable = false, insertable = false, updatable = false)
    private Member IssueSetting.memberId;
    
    @Column(name = "value")
    @NotNull
    private String IssueSetting.value;
    
    public Issue IssueSetting.getIssueId() {
        return issueId;
    }
    
    public void IssueSetting.setIssueId(Issue issueId) {
        this.issueId = issueId;
    }
    
    public Member IssueSetting.getMemberId() {
        return memberId;
    }
    
    public void IssueSetting.setMemberId(Member memberId) {
        this.memberId = memberId;
    }
    
    public String IssueSetting.getValue() {
        return value;
    }
    
    public void IssueSetting.setValue(String value) {
        this.value = value;
    }
    
}
