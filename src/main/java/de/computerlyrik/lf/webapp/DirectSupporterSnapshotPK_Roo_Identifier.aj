// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package de.computerlyrik.lf.webapp;

import de.computerlyrik.lf.webapp.DirectSupporterSnapshotPK;
import javax.persistence.Column;
import javax.persistence.Embeddable;

privileged aspect DirectSupporterSnapshotPK_Roo_Identifier {
    
    declare @type: DirectSupporterSnapshotPK: @Embeddable;
    
    @Column(name = "initiative_id", nullable = false)
    private Integer DirectSupporterSnapshotPK.initiativeId;
    
    @Column(name = "event", nullable = false)
    private String DirectSupporterSnapshotPK.event;
    
    @Column(name = "member_id", nullable = false)
    private Integer DirectSupporterSnapshotPK.memberId;
    
    public DirectSupporterSnapshotPK.new(Integer initiativeId, String event, Integer memberId) {
        super();
        this.initiativeId = initiativeId;
        this.event = event;
        this.memberId = memberId;
    }

    private DirectSupporterSnapshotPK.new() {
        super();
    }

    public Integer DirectSupporterSnapshotPK.getInitiativeId() {
        return initiativeId;
    }
    
    public String DirectSupporterSnapshotPK.getEvent() {
        return event;
    }
    
    public Integer DirectSupporterSnapshotPK.getMemberId() {
        return memberId;
    }
    
}
