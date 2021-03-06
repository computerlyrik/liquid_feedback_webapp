// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package de.computerlyrik.lf.webapp;

import de.computerlyrik.lf.webapp.Contact;
import de.computerlyrik.lf.webapp.Member;
import javax.persistence.Column;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.validation.constraints.NotNull;

privileged aspect Contact_Roo_DbManaged {
    
    @ManyToOne
    @JoinColumn(name = "other_member_id", referencedColumnName = "id", nullable = false, insertable = false, updatable = false)
    private Member Contact.otherMemberId;
    
    @ManyToOne
    @JoinColumn(name = "member_id", referencedColumnName = "id", nullable = false, insertable = false, updatable = false)
    private Member Contact.memberId;
    
    @Column(name = "public")
    @NotNull
    private boolean Contact.public1;
    
    public Member Contact.getOtherMemberId() {
        return otherMemberId;
    }
    
    public void Contact.setOtherMemberId(Member otherMemberId) {
        this.otherMemberId = otherMemberId;
    }
    
    public Member Contact.getMemberId() {
        return memberId;
    }
    
    public void Contact.setMemberId(Member memberId) {
        this.memberId = memberId;
    }
    
    public boolean Contact.isPublic1() {
        return public1;
    }
    
    public void Contact.setPublic1(boolean public1) {
        this.public1 = public1;
    }
    
}
