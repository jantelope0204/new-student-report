package com.ruoyi.student.domain;

import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

/**
 * studentInfo对象 stuent_info
 * 
 * @author 西亚
 * @date 2021-01-28
 */
public class StuentInfo extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 学号 */
    private String stuId;

    /** 学生姓名 */
    @Excel(name = "学生姓名")
    private String stuName;

    /** 1男性0女性 */
    @Excel(name = "1男性0女性")
    private Integer stuSex;

    /** 年龄 */
    @Excel(name = "年龄")
    private Integer stuAge;

    /** 身份证 */
    @Excel(name = "身份证")
    private String stuCode;

    /** 高考成绩 */
    @Excel(name = "高考成绩")
    private Integer stuScore;

    /** 学院ID */
    @Excel(name = "学院ID")
    private String stuDept;

    /** 专业代码 */
    @Excel(name = "专业代码")
    private String stuMajor;

    /** 籍贯 */
    @Excel(name = "籍贯")
    private String stuNative;

    /** 民族 */
    @Excel(name = "民族")
    private String stuFolk;

    /** 政治面貌 */
    @Excel(name = "政治面貌")
    private String stuPoliticalStatus;

    /** 联系电话 */
    @Excel(name = "联系电话")
    private Long stuPhone;

    /** 报到状态0未报到1报到 */
    @Excel(name = "报到状态0未报到1报到")
    private Integer stuStatus;

    /** QQ号 */
    @Excel(name = "QQ号")
    private Long stuQq;



    @Excel(name = "邮箱")
    private String stuEmail;


    private String roomId;

    public String getRoomId() {
        return roomId;
    }

    public void setRoomId(String roomId) {
        this.roomId = roomId;
    }

    public String getStuEmail() {
        return stuEmail;
    }

    public void setStuEmail(String stuEmail) {
        this.stuEmail = stuEmail;
    }


    public void setStuId(String stuId)
    {
        this.stuId = stuId;
    }

    public String getStuId() 
    {
        return stuId;
    }
    public void setStuName(String stuName) 
    {
        this.stuName = stuName;
    }

    public String getStuName() 
    {
        return stuName;
    }
    public void setStuSex(Integer stuSex) 
    {
        this.stuSex = stuSex;
    }

    public Integer getStuSex() 
    {
        return stuSex;
    }
    public void setStuAge(Integer stuAge) 
    {
        this.stuAge = stuAge;
    }

    public Integer getStuAge() 
    {
        return stuAge;
    }
    public void setStuCode(String stuCode)
    {
        this.stuCode = stuCode;
    }

    public String getStuCode()
    {
        return stuCode;
    }
    public void setStuScore(Integer stuScore) 
    {
        this.stuScore = stuScore;
    }

    public Integer getStuScore() 
    {
        return stuScore;
    }
    public void setStuDept(String stuDept) 
    {
        this.stuDept = stuDept;
    }

    public String getStuDept() 
    {
        return stuDept;
    }
    public void setStuMajor(String stuMajor) 
    {
        this.stuMajor = stuMajor;
    }

    public String getStuMajor() 
    {
        return stuMajor;
    }
    public void setStuNative(String stuNative) 
    {
        this.stuNative = stuNative;
    }

    public String getStuNative() 
    {
        return stuNative;
    }
    public void setStuFolk(String stuFolk) 
    {
        this.stuFolk = stuFolk;
    }

    public String getStuFolk() 
    {
        return stuFolk;
    }
    public void setStuPoliticalStatus(String stuPoliticalStatus) 
    {
        this.stuPoliticalStatus = stuPoliticalStatus;
    }

    public String getStuPoliticalStatus() 
    {
        return stuPoliticalStatus;
    }
    public void setStuPhone(Long stuPhone) 
    {
        this.stuPhone = stuPhone;
    }

    public Long getStuPhone() 
    {
        return stuPhone;
    }
    public void setStuStatus(Integer stuStatus) 
    {
        this.stuStatus = stuStatus;
    }

    public Integer getStuStatus() 
    {
        return stuStatus;
    }
    public void setStuQq(Long stuQq) 
    {
        this.stuQq = stuQq;
    }

    public Long getStuQq() 
    {
        return stuQq;
    }

}
