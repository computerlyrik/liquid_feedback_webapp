// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package de.computerlyrik.lf.webapp;

import de.computerlyrik.lf.webapp.InterestPK;
import javax.persistence.Column;
import javax.persistence.Embeddable;

privileged aspect InterestPK_Roo_Identifier {
    
    declare @type: InterestPK: @Embeddable;
    
    @Column(name = "issue_id", nullable = false)
    private Integer InterestPK.issueId;
    
    @Column(name = "member_id", nullable = false)
    private Integer InterestPK.memberId;
    
    public InterestPK.new(Integer issueId, Integer memberId) {
        super();
        this.issueId = issueId;
        this.memberId = memberId;
    }

    private InterestPK.new() {
        super();
    }

    public Integer InterestPK.getIssueId() {
        return issueId;
    }
    
    public Integer InterestPK.getMemberId() {
        return memberId;
    }
    
}