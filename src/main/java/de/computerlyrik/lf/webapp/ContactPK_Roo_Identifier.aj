// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package de.computerlyrik.lf.webapp;

import de.computerlyrik.lf.webapp.ContactPK;
import javax.persistence.Column;
import javax.persistence.Embeddable;

privileged aspect ContactPK_Roo_Identifier {
    
    declare @type: ContactPK: @Embeddable;
    
    @Column(name = "member_id", nullable = false)
    private Integer ContactPK.memberId;
    
    @Column(name = "other_member_id", nullable = false)
    private Integer ContactPK.otherMemberId;
    
    public ContactPK.new(Integer memberId, Integer otherMemberId) {
        super();
        this.memberId = memberId;
        this.otherMemberId = otherMemberId;
    }

    private ContactPK.new() {
        super();
    }

    public Integer ContactPK.getMemberId() {
        return memberId;
    }
    
    public Integer ContactPK.getOtherMemberId() {
        return otherMemberId;
    }
    
}