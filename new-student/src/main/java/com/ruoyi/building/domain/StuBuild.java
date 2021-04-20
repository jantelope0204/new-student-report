package com.ruoyi.building.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 宿舍楼对象 stu_build
 * 
 * @author zhangxiya
 * @date 2021-04-20
 */
public class StuBuild extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 楼栋主键 */
    private String buildId;

    /** 区域 */
    @Excel(name = "区域")
    private String location;

    /** 楼栋名称 */
    @Excel(name = "楼栋名称")
    private String buildName;

    public void setBuildId(String buildId) 
    {
        this.buildId = buildId;
    }

    public String getBuildId() 
    {
        return buildId;
    }
    public void setLocation(String location) 
    {
        this.location = location;
    }

    public String getLocation() 
    {
        return location;
    }
    public void setBuildName(String buildName) 
    {
        this.buildName = buildName;
    }

    public String getBuildName() 
    {
        return buildName;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("buildId", getBuildId())
            .append("location", getLocation())
            .append("buildName", getBuildName())
            .toString();
    }
}
