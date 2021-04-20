package com.ruoyi.room.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 宿舍对象 stu_room
 * 
 * @author ruoyi
 * @date 2021-04-20
 */
public class StuRoom extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 主键 */
    private String roomId;

    /** 房间编号 */
    @Excel(name = "房间编号")
    private String roomName;

    /** 人数 */
    @Excel(name = "人数")
    private String roomNum;

    /** 入住学生 */
    @Excel(name = "入住学生")
    private String roomStu;

    /** 楼栋id */
    @Excel(name = "楼栋id")
    private String buildId;

    /** 当前人数 */
    @Excel(name = "当前人数")
    private Integer currentNum;

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
    public void setRoomNum(String roomNum)
    {
        this.roomNum = roomNum;
    }

    public String getRoomNum()
    {
        return roomNum;
    }
    public void setRoomStu(String roomStu) 
    {
        this.roomStu = roomStu;
    }

    public String getRoomStu() 
    {
        return roomStu;
    }
    public void setBuildId(String buildId) 
    {
        this.buildId = buildId;
    }

    public String getBuildId() 
    {
        return buildId;
    }
    public void setCurrentNum(Integer currentNum) 
    {
        this.currentNum = currentNum;
    }

    public Integer getCurrentNum() 
    {
        return currentNum;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("roomId", getRoomId())
            .append("roomName", getRoomName())
            .append("roomNum", getRoomNum())
            .append("roomStu", getRoomStu())
            .append("buildId", getBuildId())
            .append("currentNum", getCurrentNum())
            .toString();
    }
}
