// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package de.computerlyrik.lf.webapp;

import de.computerlyrik.lf.webapp.MemberImagePK;
import javax.persistence.Column;
import javax.persistence.Embeddable;

privileged aspect MemberImagePK_Roo_Identifier {
    
    declare @type: MemberImagePK: @Embeddable;
    
    @Column(name = "member_id", nullable = false)
    private Integer MemberImagePK.memberId;
    
    @Column(name = "image_type", nullable = false)
    private String MemberImagePK.imageType;
    
    @Column(name = "scaled", nullable = false)
    private Boolean MemberImagePK.scaled;
    
    public MemberImagePK.new(Integer memberId, String imageType, Boolean scaled) {
        super();
        this.memberId = memberId;
        this.imageType = imageType;
        this.scaled = scaled;
    }

    private MemberImagePK.new() {
        super();
    }

    public Integer MemberImagePK.getMemberId() {
        return memberId;
    }
    
    public String MemberImagePK.getImageType() {
        return imageType;
    }
    
    public Boolean MemberImagePK.getScaled() {
        return scaled;
    }
    
}
