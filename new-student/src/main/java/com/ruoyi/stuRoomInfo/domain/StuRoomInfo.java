package com.ruoyi.stuRoomInfo.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 学生入住信息对象 stu_room_info
 * 
 * @author 张西亚
 * @date 2021-04-20
 */
public class StuRoomInfo extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 主键 */
    private String id;

    /** 房间id */
    @Excel(name = "房间id")
    private String roomId;

    /** 房间编号 */
    @Excel(name = "房间编号")
    private String roomName;

    /** 学生学号 */
    @Excel(name = "学生学号")
    private String stuId;

    /** 学生名字 */
    @Excel(name = "学生名字")
    private String stuName;

    public void setId(String id) 
    {
        this.id = id;
    }

    public String getId() 
    {
        return id;
    }
    public void setRoomId(String roomId) 
    {
        this.roomId = roomId;
    }

    public String getRoomId() 
    {
        return roomId;
    }
    public void setRoomName(String roomName) 
    {
        this.roomName = roomName;
    }

    public String getRoomName() 
    {
        return roomName;
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

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("roomId", getRoomId())
            .append("roomName", getRoomName())
            .append("stuId", getStuId())
            .append("stuName", getStuName())
            .toString();
    }
}
