// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package de.computerlyrik.lf.webapp;

import de.computerlyrik.lf.webapp.DirectVoterPK;
import javax.persistence.Column;
import javax.persistence.Embeddable;

privileged aspect DirectVoterPK_Roo_Identifier {
    
    declare @type: DirectVoterPK: @Embeddable;
    
    @Column(name = "issue_id", nullable = false)
    private Integer DirectVoterPK.issueId;
    
    @Column(name = "member_id", nullable = false)
    private Integer DirectVoterPK.memberId;
    
    public DirectVoterPK.new(Integer issueId, Integer memberId) {
        super();
        this.issueId = issueId;
        this.memberId = memberId;
    }

    private DirectVoterPK.new() {
        super();
    }

    public Integer DirectVoterPK.getIssueId() {
        return issueId;
    }
    
    public Integer DirectVoterPK.getMemberId() {
        return memberId;
    }
    
}
