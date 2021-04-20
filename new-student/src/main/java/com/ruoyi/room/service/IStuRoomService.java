package com.ruoyi.room.service;

import java.util.List;
import com.ruoyi.room.domain.StuRoom;

/**
 * 宿舍Service接口
 * 
 * @author ruoyi
 * @date 2021-04-20
 */
public interface IStuRoomService 
{
    /**
     * 查询宿舍
     * 
     * @param roomId 宿舍ID
     * @return 宿舍
     */
    public StuRoom selectStuRoomById(String roomId);

    /**
     * 查询宿舍列表
     * 
     * @param stuRoom 宿舍
     * @return 宿舍集合
     */
    public List<StuRoom> selectStuRoomList(StuRoom stuRoom);

    /**
     * 新增宿舍
     * 
     * @param stuRoom 宿舍
     * @return 结果
     */
    public int insertStuRoom(StuRoom stuRoom);

    /**
     * 修改宿舍
     * 
     * @param stuRoom 宿舍
     * @return 结果
     */
    public int updateStuRoom(StuRoom stuRoom);

    /**
     * 批量删除宿舍
     * 
     * @param roomIds 需要删除的宿舍ID
     * @return 结果
     */
    public int deleteStuRoomByIds(String[] roomIds);

    /**
     * 删除宿舍信息
     * 
     * @param roomId 宿舍ID
     * @return 结果
     */
    public int deleteStuRoomById(String roomId);
}
