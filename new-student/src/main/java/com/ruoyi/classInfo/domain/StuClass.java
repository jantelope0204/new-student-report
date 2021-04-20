package com.ruoyi.classInfo.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * classInfo对象 stu_class
 * 
 * @author zhangxiya
 * @date 2021-04-20
 */
public class StuClass extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 主键ID */
    private String id;

    /** 班级名称 */
    @Excel(name = "班级名称")
    private String className;

    /** 导师工号 */
    @Excel(name = "导师工号")
    private String teacherId;

    /** 导师姓名 */
    @Excel(name = "导师姓名")
    private String teacherName;

    public void setId(String id) 
    {
        this.id = id;
    }

    public String getId() 
    {
        return id;
    }
    public void setClassName(String className) 
    {
        this.className = className;
    }

    public String getClassName() 
    {
        return className;
    }
    public void setTeacherId(String teacherId) 
    {
        this.teacherId = teacherId;
    }

    public String getTeacherId() 
    {
        return teacherId;
    }
    public void setTeacherName(String teacherName) 
    {
        this.teacherName = teacherName;
    }

    public String getTeacherName() 
    {
        return teacherName;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("className", getClassName())
            .append("teacherId", getTeacherId())
            .append("teacherName", getTeacherName())
            .toString();
    }
}
