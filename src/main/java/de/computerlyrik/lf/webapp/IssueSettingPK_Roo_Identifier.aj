// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package de.computerlyrik.lf.webapp;

import de.computerlyrik.lf.webapp.IssueSettingPK;
import javax.persistence.Column;
import javax.persistence.Embeddable;

privileged aspect IssueSettingPK_Roo_Identifier {
    
    declare @type: IssueSettingPK: @Embeddable;
    
    @Column(name = "member_id", nullable = false)
    private Integer IssueSettingPK.memberId;
    
    @Column(name = "key", nullable = false)
    private String IssueSettingPK.key;
    
    @Column(name = "issue_id", nullable = false)
    private Integer IssueSettingPK.issueId;
    
    public IssueSettingPK.new(Integer memberId, String key, Integer issueId) {
        super();
        this.memberId = memberId;
        this.key = key;
        this.issueId = issueId;
    }

    private IssueSettingPK.new() {
        super();
    }

    public Integer IssueSettingPK.getMemberId() {
        return memberId;
    }
    
    public String IssueSettingPK.getKey() {
        return key;
    }
    
    public Integer IssueSettingPK.getIssueId() {
        return issueId;
    }
    
}
