// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package de.computerlyrik.lf.webapp;

import de.computerlyrik.lf.webapp.DelegatingVoterPK;
import javax.persistence.Column;
import javax.persistence.Embeddable;

privileged aspect DelegatingVoterPK_Roo_Identifier {
    
    declare @type: DelegatingVoterPK: @Embeddable;
    
    @Column(name = "issue_id", nullable = false)
    private Integer DelegatingVoterPK.issueId;
    
    @Column(name = "member_id", nullable = false)
    private Integer DelegatingVoterPK.memberId;
    
    public DelegatingVoterPK.new(Integer issueId, Integer memberId) {
        super();
        this.issueId = issueId;
        this.memberId = memberId;
    }

    private DelegatingVoterPK.new() {
        super();
    }

    public Integer DelegatingVoterPK.getIssueId() {
        return issueId;
    }
    
    public Integer DelegatingVoterPK.getMemberId() {
        return memberId;
    }
    
}
