// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package de.computerlyrik.lf.webapp;

import de.computerlyrik.lf.webapp.RenderedVoterCommentPK;
import javax.persistence.Column;
import javax.persistence.Embeddable;

privileged aspect RenderedVoterCommentPK_Roo_Identifier {
    
    declare @type: RenderedVoterCommentPK: @Embeddable;
    
    @Column(name = "issue_id", nullable = false)
    private Integer RenderedVoterCommentPK.issueId;
    
    @Column(name = "member_id", nullable = false)
    private Integer RenderedVoterCommentPK.memberId;
    
    @Column(name = "format", nullable = false)
    private String RenderedVoterCommentPK.format;
    
    public RenderedVoterCommentPK.new(Integer issueId, Integer memberId, String format) {
        super();
        this.issueId = issueId;
        this.memberId = memberId;
        this.format = format;
    }

    private RenderedVoterCommentPK.new() {
        super();
    }

    public Integer RenderedVoterCommentPK.getIssueId() {
        return issueId;
    }
    
    public Integer RenderedVoterCommentPK.getMemberId() {
        return memberId;
    }
    
    public String RenderedVoterCommentPK.getFormat() {
        return format;
    }
    
}
