// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package de.computerlyrik.lf.webapp;

import de.computerlyrik.lf.webapp.Member;
import de.computerlyrik.lf.webapp.MemberApplication;
import java.util.Calendar;
import javax.persistence.Column;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import org.springframework.format.annotation.DateTimeFormat;

privileged aspect MemberApplication_Roo_DbManaged {
    
    @ManyToOne
    @JoinColumn(name = "member_id", referencedColumnName = "id", nullable = false)
    private Member MemberApplication.memberId;
    
    @Column(name = "name", unique = true)
    @NotNull
    private String MemberApplication.name;
    
    @Column(name = "comment")
    private String MemberApplication.comment;
    
    @Column(name = "access_level")
    @NotNull
    private String MemberApplication.accessLevel;
    
    @Column(name = "key", unique = true)
    @NotNull
    private String MemberApplication.key;
    
    @Column(name = "last_usage")
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "MM")
    private Calendar MemberApplication.lastUsage;
    
    public Member MemberApplication.getMemberId() {
        return memberId;
    }
    
    public void MemberApplication.setMemberId(Member memberId) {
        this.memberId = memberId;
    }
    
    public String MemberApplication.getName() {
        return name;
    }
    
    public void MemberApplication.setName(String name) {
        this.name = name;
    }
    
    public String MemberApplication.getComment() {
        return comment;
    }
    
    public void MemberApplication.setComment(String comment) {
        this.comment = comment;
    }
    
    public String MemberApplication.getAccessLevel() {
        return accessLevel;
    }
    
    public void MemberApplication.setAccessLevel(String accessLevel) {
        this.accessLevel = accessLevel;
    }
    
    public String MemberApplication.getKey() {
        return key;
    }
    
    public void MemberApplication.setKey(String key) {
        this.key = key;
    }
    
    public Calendar MemberApplication.getLastUsage() {
        return lastUsage;
    }
    
    public void MemberApplication.setLastUsage(Calendar lastUsage) {
        this.lastUsage = lastUsage;
    }
    
}
